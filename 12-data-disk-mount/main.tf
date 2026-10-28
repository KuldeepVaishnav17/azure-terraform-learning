data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_virtual_machine_run_command" "mount_disk" {
  name               = var.run_command_name
  location           = var.location
  virtual_machine_id = data.azurerm_virtual_machine.vm.id

  source {
    script = file("${path.module}/mount-data-disk.sh")
  }

  tags = {
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
