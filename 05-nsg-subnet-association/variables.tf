variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "vnet_name" {
  description = "Name of the existing Azure Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the existing Azure subnet"
  type        = string
}

variable "nsg_name" {
  description = "Name of the existing Network Security Group"
  type        = string
}
