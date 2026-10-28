output "vm_name" {
  description = "Created Linux VM name"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_id" {
  description = "Azure VM resource ID"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_size" {
  description = "Azure VM size"
  value       = azurerm_linux_virtual_machine.vm.size
}

output "private_ip_address" {
  description = "Private IP of the VM NIC"
  value       = data.azurerm_network_interface.nic.private_ip_address
}
