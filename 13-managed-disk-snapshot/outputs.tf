output "snapshot_name" {
  description = "Name of the Azure managed disk snapshot"
  value       = azurerm_snapshot.snapshot.name
}

output "snapshot_id" {
  description = "Resource ID of the snapshot"
  value       = azurerm_snapshot.snapshot.id
}

output "snapshot_size_gb" {
  description = "Size of the snapshot in GiB"
  value       = azurerm_snapshot.snapshot.disk_size_gb
}

output "source_disk_name" {
  description = "Name of the managed disk used as the snapshot source"
  value       = data.azurerm_managed_disk.data_disk.name
}

output "source_disk_id" {
  description = "Resource ID of the source managed disk"
  value       = data.azurerm_managed_disk.data_disk.id
}
