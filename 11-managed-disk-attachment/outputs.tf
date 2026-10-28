output "vm_name" {
  description = "Name of the VM receiving the data disk"
  value       = data.azurerm_virtual_machine.vm.name
}

output "managed_disk_name" {
  description = "Name of the attached managed disk"
  value       = data.azurerm_managed_disk.data_disk.name
}

output "managed_disk_id" {
  description = "Resource ID of the attached managed disk"
  value       = data.azurerm_managed_disk.data_disk.id
}

output "attachment_id" {
  description = "Resource ID of the disk attachment"
  value       = azurerm_virtual_machine_data_disk_attachment.attachment.id
}

output "lun" {
  description = "Logical Unit Number used for the disk"
  value       = azurerm_virtual_machine_data_disk_attachment.attachment.lun
}

output "caching" {
  description = "Caching mode of the disk attachment"
  value       = azurerm_virtual_machine_data_disk_attachment.attachment.caching
}
