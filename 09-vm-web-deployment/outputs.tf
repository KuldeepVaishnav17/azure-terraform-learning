output "vm_name" {
  description = "VM receiving the Apache deployment"
  value       = data.azurerm_virtual_machine.vm.name
}

output "vm_id" {
  description = "Resource ID of the VM"
  value       = data.azurerm_virtual_machine.vm.id
}

output "run_command_id" {
  description = "Resource ID of the Azure VM Run Command"
  value       = azurerm_virtual_machine_run_command.apache.id
}

output "deployment_name" {
  description = "Name of the VM Run Command"
  value       = azurerm_virtual_machine_run_command.apache.name
}
