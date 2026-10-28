output "subnet_name" {
  description = "Name of the created subnet"
  value       = azurerm_subnet.subnet.name
}

output "subnet_id" {
  description = "Resource ID of the created subnet"
  value       = azurerm_subnet.subnet.id
}

output "subnet_address_prefixes" {
  description = "Address prefixes assigned to the subnet"
  value       = azurerm_subnet.subnet.address_prefixes
}

output "virtual_network_name" {
  description = "Name of the Virtual Network containing the subnet"
  value       = data.azurerm_virtual_network.vnet.name
}
