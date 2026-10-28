output "storage_account_name" {
  description = "Azure Storage Account name"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_id" {
  description = "Azure Storage Account resource ID"
  value       = azurerm_storage_account.storage.id
}

output "primary_blob_endpoint" {
  description = "Primary Blob Storage endpoint"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

output "account_tier" {
  description = "Storage Account performance tier"
  value       = azurerm_storage_account.storage.account_tier
}

output "replication_type" {
  description = "Storage Account replication type"
  value       = azurerm_storage_account.storage.account_replication_type
}
