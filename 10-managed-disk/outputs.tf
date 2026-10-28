output "disk_name" {
  description = "Name of the Azure Managed Disk"
  value       = azurerm_managed_disk.data_disk.name
}

output "disk_id" {
  description = "Resource ID of the Azure Managed Disk"
  value       = azurerm_managed_disk.data_disk.id
}

output "disk_size_gb" {
  description = "Size of the Azure Managed Disk"
  value       = azurerm_managed_disk.data_disk.disk_size_gb
}

output "storage_account_type" {
  description = "Storage type of the Azure Managed Disk"
  value       = azurerm_managed_disk.data_disk.storage_account_type
}
