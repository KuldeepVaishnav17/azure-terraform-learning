variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where the snapshot will be created"
  type        = string
}

variable "managed_disk_name" {
  description = "Name of the existing managed disk"
  type        = string
}

variable "snapshot_name" {
  description = "Name of the Azure managed disk snapshot"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
