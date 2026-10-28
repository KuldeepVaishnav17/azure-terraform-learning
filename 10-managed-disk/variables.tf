variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where the managed disk will be created"
  type        = string
}

variable "disk_name" {
  description = "Name of the Azure Managed Disk"
  type        = string
}

variable "storage_account_type" {
  description = "Storage type for the Managed Disk"
  type        = string
}

variable "disk_size_gb" {
  description = "Size of the Managed Disk in GiB"
  type        = number
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
