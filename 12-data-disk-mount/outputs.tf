output "vm_name" {
  description = "VM on which the data disk was configured"
  value       = data.azurerm_virtual_machine.vm.name
}

output "mount_point" {
  description = "Linux mount point configured for the data disk"
  value       = var.mount_point
}

output "run_command_id" {
  description = "Azure VM Run Command resource ID"
  value       = azurerm_virtual_machine_run_command.mount_disk.id
}

output "run_command_name" {
  description = "Azure VM Run Command name"
  value       = azurerm_virtual_machine_run_command.mount_disk.name
}
