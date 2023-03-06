variable "rg2_name" {
  default     = "testResourceGroup2"
  type        = string
  description = "resource group name"
}

variable "rg2_location" {
  default     = "East US"
  type        = string
  description = "RG deployment region/location"
}

variable "rg2_tags" {
  default     = "Staging"
  type        = string
  description = "RG tag"
}

variable "subscription_id" {}

variable "tenant_id" {}

variable "client_id" {}

variable "client_secret" {}