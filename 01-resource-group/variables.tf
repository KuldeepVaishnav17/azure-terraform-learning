variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where the Resource Group will be created"
  type        = string
}

variable "environment" {
  description = "Environment name used for resource tagging"
  type        = string
}
