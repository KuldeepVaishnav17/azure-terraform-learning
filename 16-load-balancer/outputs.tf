output "load_balancer_name" {
  description = "Azure Load Balancer name"
  value       = azurerm_lb.lb.name
}

output "load_balancer_id" {
  description = "Azure Load Balancer resource ID"
  value       = azurerm_lb.lb.id
}

output "load_balancer_public_ip" {
  description = "Public IP address of the Load Balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}

output "backend_pool_name" {
  description = "Load Balancer backend pool"
  value       = azurerm_lb_backend_address_pool.backend.name
}

output "health_probe_name" {
  description = "Load Balancer health probe"
  value       = azurerm_lb_probe.http.name
}

output "load_balancing_rule_name" {
  description = "HTTP load-balancing rule"
  value       = azurerm_lb_rule.http.name
}
