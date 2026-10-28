output "nsg_name" {
  description = "Name of the Network Security Group"
  value       = azurerm_network_security_group.nsg.name
}

output "nsg_id" {
  description = "Resource ID of the Network Security Group"
  value       = azurerm_network_security_group.nsg.id
}

output "http_rule_name" {
  description = "Name of the HTTP security rule"
  value       = azurerm_network_security_rule.allow_http.name
}

output "ssh_rule_name" {
  description = "Name of the SSH security rule"
  value       = azurerm_network_security_rule.allow_ssh.name
}
