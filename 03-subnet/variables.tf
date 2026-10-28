variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "vnet_name" {
  description = "Name of the existing Azure Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes assigned to the subnet"
  type        = list(string)
}
