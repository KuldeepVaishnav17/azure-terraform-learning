output "storage_account_name" {
  description = "Storage Account containing the blob"
  value       = data.azurerm_storage_account.storage.name
}

output "container_name" {
  description = "Created private Blob container"
  value       = azurerm_storage_container.container.name
}

output "container_id" {
  description = "Resource ID of the Blob container"
  value       = azurerm_storage_container.container.id
}

output "container_url" {
  description = "URL of the Blob container"
  value       = azurerm_storage_container.container.url
}

output "blob_name" {
  description = "Created blob name"
  value       = azurerm_storage_blob.demo.name
}

output "blob_url" {
  description = "URL of the created blob"
  value       = azurerm_storage_blob.demo.url
}
