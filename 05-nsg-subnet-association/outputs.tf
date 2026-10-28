output "subnet_name" {
  description = "Name of the subnet associated with the NSG"
  value       = data.azurerm_subnet.subnet.name
}

output "subnet_id" {
  description = "Resource ID of the associated subnet"
  value       = data.azurerm_subnet.subnet.id
}

output "nsg_name" {
  description = "Name of the associated Network Security Group"
  value       = data.azurerm_network_security_group.nsg.name
}

output "nsg_id" {
  description = "Resource ID of the associated Network Security Group"
  value       = data.azurerm_network_security_group.nsg.id
}

output "association_id" {
  description = "Resource ID of the subnet and NSG association"
  value       = azurerm_subnet_network_security_group_association.association.id
}
