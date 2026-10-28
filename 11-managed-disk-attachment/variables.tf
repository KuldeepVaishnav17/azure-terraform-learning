variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "vm_name" {
  description = "Name of the existing Azure Linux VM"
  type        = string
}

variable "managed_disk_name" {
  description = "Name of the existing Azure Managed Disk"
  type        = string
}

variable "lun" {
  description = "Logical Unit Number used to attach the disk"
  type        = number
  default     = 0

  validation {
    condition     = var.lun >= 0 && var.lun <= 63
    error_message = "The LUN must be between 0 and 63."
  }
}

variable "caching" {
  description = "Caching mode for the attached data disk"
  type        = string
  default     = "ReadWrite"

  validation {
    condition = contains(
      ["None", "ReadOnly", "ReadWrite"],
      var.caching
    )
    error_message = "Caching must be None, ReadOnly, or ReadWrite."
  }
}
