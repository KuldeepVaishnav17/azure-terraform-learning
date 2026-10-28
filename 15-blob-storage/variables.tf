variable "resource_group_name" {
  description = "Existing Azure Resource Group"
  type        = string
}

variable "storage_account_name" {
  description = "Existing Azure Storage Account name"
  type        = string
}

variable "container_name" {
  description = "Blob container name"
  type        = string
}

variable "blob_name" {
  description = "Name of the example blob"
  type        = string
}

variable "blob_content" {
  description = "Content stored inside the example blob"
  type        = string
}
