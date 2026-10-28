output "acr_name" {
  description = "Azure Container Registry name"
  value       = azurerm_container_registry.acr.name
}

output "acr_id" {
  description = "Azure Container Registry resource ID"
  value       = azurerm_container_registry.acr.id
}

output "acr_login_server" {
  description = "Azure Container Registry login server"
  value       = azurerm_container_registry.acr.login_server
}

output "acr_sku" {
  description = "Azure Container Registry SKU"
  value       = azurerm_container_registry.acr.sku
}

output "admin_enabled" {
  description = "Whether the ACR admin account is enabled"
  value       = azurerm_container_registry.acr.admin_enabled
}
