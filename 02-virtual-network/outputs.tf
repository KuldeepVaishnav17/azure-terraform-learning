output "vnet_name" {
  description = "Name of the created Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "Resource ID of the created Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_address_space" {
  description = "Address space of the Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
}

output "resource_group_name" {
  description = "Resource Group containing the Virtual Network"
  value       = azurerm_virtual_network.vnet.resource_group_name
}
