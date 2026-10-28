#!/bin/bash

set -euo pipefail

MOUNT_POINT="/data"

DISK_LINK="/dev/disk/azure/scsi1/lun0"
PARTITION_LINK="/dev/disk/azure/scsi1/lun0-part1"

echo "Checking attached disks..."
lsblk

if [ ! -e "$DISK_LINK" ]; then
    echo "ERROR: Expected Azure data disk at $DISK_LINK was not found."
    echo "Stopping to avoid formatting the wrong disk."
    exit 1
fi

DISK_DEVICE=$(readlink -f "$DISK_LINK")

echo "LUN 0 disk detected as: $DISK_DEVICE"

if ! command -v parted >/dev/null 2>&1; then
    apt-get update
    DEBIAN_FRONTEND=noninteractive apt-get install -y parted
fi

if [ ! -e "$PARTITION_LINK" ]; then
    echo "Creating GPT partition..."
    parted "$DISK_DEVICE" --script mklabel gpt
    parted "$DISK_DEVICE" --script mkpart primary ext4 0% 100%

    partprobe "$DISK_DEVICE"
    udevadm settle
    sleep 2
fi

if [ ! -e "$PARTITION_LINK" ]; then
    echo "ERROR: Expected partition $PARTITION_LINK was not created."
    exit 1
fi

PARTITION_DEVICE=$(readlink -f "$PARTITION_LINK")

echo "Partition detected as: $PARTITION_DEVICE"

FILESYSTEM=$(blkid -s TYPE -o value "$PARTITION_DEVICE" || true)

if [ -z "$FILESYSTEM" ]; then
    echo "Creating ext4 filesystem..."
    mkfs.ext4 "$PARTITION_DEVICE"
elif [ "$FILESYSTEM" != "ext4" ]; then
    echo "ERROR: Existing filesystem is $FILESYSTEM, not ext4."
    exit 1
else
    echo "Existing ext4 filesystem detected."
fi

mkdir -p "$MOUNT_POINT"

UUID=$(blkid -s UUID -o value "$PARTITION_DEVICE")

if ! grep -q "UUID=$UUID" /etc/fstab; then
    echo "UUID=$UUID $MOUNT_POINT ext4 defaults,nofail 0 2" >> /etc/fstab
fi

mount -a

chown azureuser:azureuser "$MOUNT_POINT"

echo "Azure Terraform persistent data disk" > "$MOUNT_POINT/terraform-test.txt"

echo "Disk configuration:"
lsblk -f

echo "Mounted filesystem:"
df -h "$MOUNT_POINT"

echo "Test file:"
cat "$MOUNT_POINT/terraform-test.txt"
