variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where the Public IP will be created"
  type        = string
}

variable "public_ip_name" {
  description = "Name of the Azure Public IP resource"
  type        = string
}

variable "allocation_method" {
  description = "Public IP allocation method"
  type        = string
  default     = "Static"

  validation {
    condition     = contains(["Static"], var.allocation_method)
    error_message = "Standard SKU Public IP must use Static allocation."
  }
}

variable "sku" {
  description = "SKU of the Azure Public IP"
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard"], var.sku)
    error_message = "This project supports the Standard Public IP SKU."
  }
}

variable "ip_version" {
  description = "IP version of the Public IP"
  type        = string
  default     = "IPv4"

  validation {
    condition     = contains(["IPv4"], var.ip_version)
    error_message = "This learning project currently supports IPv4."
  }
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
