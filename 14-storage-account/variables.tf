variable "resource_group_name" {
  description = "Existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique Azure Storage Account name"
  type        = string
}

variable "account_tier" {
  description = "Storage Account performance tier"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Storage Account replication type"
  type        = string
  default     = "LRS"
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
