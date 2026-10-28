output "public_ip_name" {
  description = "Name of the created Azure Public IP"
  value       = azurerm_public_ip.public_ip.name
}

output "public_ip_id" {
  description = "Resource ID of the created Azure Public IP"
  value       = azurerm_public_ip.public_ip.id
}

output "public_ip_address" {
  description = "Allocated public IPv4 address"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "allocation_method" {
  description = "Allocation method of the Public IP"
  value       = azurerm_public_ip.public_ip.allocation_method
}

output "public_ip_sku" {
  description = "SKU of the Public IP"
  value       = azurerm_public_ip.public_ip.sku
}
