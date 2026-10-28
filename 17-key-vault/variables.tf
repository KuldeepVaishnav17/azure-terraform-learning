variable "resource_group_name" {
  description = "Existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "key_vault_name" {
  description = "Globally unique Azure Key Vault name"
  type        = string
}

variable "sku_name" {
  description = "Azure Key Vault SKU"
  type        = string
  default     = "standard"

  validation {
    condition     = contains(["standard", "premium"], var.sku_name)
    error_message = "Key Vault SKU must be standard or premium."
  }
}

variable "soft_delete_retention_days" {
  description = "Number of days deleted Key Vault data is retained"
  type        = number
  default     = 7
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
