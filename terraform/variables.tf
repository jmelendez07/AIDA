variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "AIDA-Resource-Group"
  description = "Name of the resource group."
}

variable "storage_account_name" {
  type        = string
  default     = "tfstate"
  description = "Name of the storage account for Terraform state."
}

variable "storage_account_tier" {
  type       = string
  default     = "Standard"
  description = "The performance tier of the storage account."
}

variable "storage_container_name" {
  type        = string
  default     = "tfstate"
  description = "Name of the storage container for Terraform state."
}