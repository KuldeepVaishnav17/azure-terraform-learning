variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where the VNet will be created"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space used by the Virtual Network"
  type        = list(string)
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
