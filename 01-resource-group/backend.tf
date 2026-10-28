terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstate2771611548"
    container_name       = "tfstate"
    key                  = "01-resource-group.tfstate"
    use_azuread_auth     = true
  }
}
