variable "resource_group_name" {
  description = "Existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "nic_name" {
  description = "Existing network interface name"
  type        = string
}

variable "vm_name" {
  description = "Linux VM name"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
}

variable "admin_username" {
  description = "Linux administrator username"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
}
