data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = var.location
  allocation_method   = var.allocation_method
  sku                 = var.sku
  ip_version          = var.ip_version

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
