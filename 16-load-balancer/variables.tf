variable "resource_group_name" {
  description = "Existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "nic_name" {
  description = "Existing backend VM network interface"
  type        = string
}

variable "nic_ip_configuration_name" {
  description = "IP configuration name on the backend NIC"
  type        = string
}

variable "lb_name" {
  description = "Azure Load Balancer name"
  type        = string
}

variable "lb_public_ip_name" {
  description = "Public IP used by the Load Balancer"
  type        = string
}

variable "frontend_name" {
  description = "Load Balancer frontend IP configuration name"
  type        = string
}

variable "backend_pool_name" {
  description = "Load Balancer backend pool name"
  type        = string
}

variable "probe_name" {
  description = "Load Balancer health probe name"
  type        = string
}

variable "rule_name" {
  description = "Load balancing rule name"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
