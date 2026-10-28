data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "storage" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id    = data.azurerm_storage_account.storage.id
  container_access_type = "private"
}

resource "azurerm_storage_blob" "demo" {
  name                   = var.blob_name
  storage_account_name   = data.azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"

  source_content = var.blob_content

  content_type = "text/plain"

  metadata = {
    managedby   = "terraform"
    environment = "learning"
  }
}
