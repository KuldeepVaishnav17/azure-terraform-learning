variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_name" {
  description = "Name of the existing Azure Linux VM"
  type        = string
}

variable "run_command_name" {
  description = "Name of the Azure VM Run Command"
  type        = string
}

variable "mount_point" {
  description = "Linux directory where the data disk will be mounted"
  type        = string
}
