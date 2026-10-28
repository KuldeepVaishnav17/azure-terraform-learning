data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_managed_disk" "data_disk" {
  name                 = var.disk_name
  location             = var.location
  resource_group_name  = data.azurerm_resource_group.rg.name
  storage_account_type = var.storage_account_type

  create_option = "Empty"
  disk_size_gb  = var.disk_size_gb

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
