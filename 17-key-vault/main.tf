data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "vault" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name

  tenant_id = data.azurerm_client_config.current.tenant_id
  sku_name  = var.sku_name

  rbac_authorization_enabled = true

  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled   = false

  public_network_access_enabled = true

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
