data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_network_interface" "nic" {
  name                = var.nic_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_public_ip" "lb_public_ip" {
  name                = var.lb_public_ip_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = var.location

  allocation_method = "Static"
  sku               = "Standard"

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_lb" "lb" {
  name                = var.lb_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = var.location
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = var.frontend_name
    public_ip_address_id = azurerm_public_ip.lb_public_ip.id
  }

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_lb_backend_address_pool" "backend" {
  name            = var.backend_pool_name
  loadbalancer_id = azurerm_lb.lb.id
}

resource "azurerm_network_interface_backend_address_pool_association" "backend" {
  network_interface_id    = data.azurerm_network_interface.nic.id
  ip_configuration_name   = var.nic_ip_configuration_name
  backend_address_pool_id = azurerm_lb_backend_address_pool.backend.id
}

resource "azurerm_lb_probe" "http" {
  name            = var.probe_name
  loadbalancer_id = azurerm_lb.lb.id

  protocol     = "Http"
  port         = 80
  request_path = "/"

  interval_in_seconds = 15
  number_of_probes    = 2
}

resource "azurerm_lb_rule" "http" {
  name            = var.rule_name
  loadbalancer_id = azurerm_lb.lb.id

  protocol      = "Tcp"
  frontend_port = 80
  backend_port  = 80

  frontend_ip_configuration_name = var.frontend_name

  backend_address_pool_ids = [
    azurerm_lb_backend_address_pool.backend.id
  ]

  probe_id = azurerm_lb_probe.http.id

  disable_outbound_snat = true
  enable_tcp_reset      = true
}
