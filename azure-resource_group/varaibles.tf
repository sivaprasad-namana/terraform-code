variable "subscription_id" {}

variable "tenant_id" {}

variable "client_id" {}

variable "client_secret" {}

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

variable "rg2_security_group" {
  default     = "rg2-security-group"
  type        = string
  description = "RG Security group name"
}

variable "rg2_virtual_network_1" {
  default     = "rg2-network"
  type        = string
  description = "RG virtual network name"
}

variable "rg2_vn1_address_space" {
  default     = ["10.0.0.0/16"]
  type        = list
  description = "The address space that is used the virtual network"
}

variable "rg2_vn1_dns_servers" {
  default     = ["10.0.0.6", "10.0.0.7"]
  type        = list
  description = "List of IP addresses of DNS servers"
}

variable "rg2_vn1_subnet1_name" {
  default     = "rg2-vn1-subnet1"
  type        = string
  description = "The name of the subnet"
}

variable "rg2_vn1_subnet1_address_prefix" {
  default     = "10.0.3.0/24"
  description = "The address prefix to use for the subnet"
}

variable "rg2_vn1_subnet2_name" {
  default     = "rg2-vn1-subnet2"
  type        = string
  description = "The name of the subnet"
}

variable "rg2_vn1_subnet2_address_prefix" {
  default     = "10.0.4.0/24"
  description = "The address prefix to use for the subnet"
}