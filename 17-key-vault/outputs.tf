output "key_vault_name" {
  description = "Azure Key Vault name"
  value       = azurerm_key_vault.vault.name
}

output "key_vault_id" {
  description = "Azure Key Vault resource ID"
  value       = azurerm_key_vault.vault.id
}

output "key_vault_uri" {
  description = "Azure Key Vault URI"
  value       = azurerm_key_vault.vault.vault_uri
}

output "tenant_id" {
  description = "Microsoft Entra tenant associated with the Key Vault"
  value       = azurerm_key_vault.vault.tenant_id
}

output "rbac_authorization_enabled" {
  description = "Whether the Key Vault uses Azure RBAC"
  value       = azurerm_key_vault.vault.rbac_authorization_enabled
}
