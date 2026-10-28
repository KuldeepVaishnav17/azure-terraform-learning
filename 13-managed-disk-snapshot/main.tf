data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_managed_disk" "data_disk" {
  name                = var.managed_disk_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_snapshot" "snapshot" {
  name                = var.snapshot_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name

  create_option      = "Copy"
  source_resource_id = data.azurerm_managed_disk.data_disk.id

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    SourceDisk  = var.managed_disk_name
  }
}
