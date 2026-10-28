data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

data "azurerm_managed_disk" "data_disk" {
  name                = var.managed_disk_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_virtual_machine_data_disk_attachment" "attachment" {
  managed_disk_id    = data.azurerm_managed_disk.data_disk.id
  virtual_machine_id = data.azurerm_virtual_machine.vm.id
  lun                = var.lun
  caching            = var.caching
}
