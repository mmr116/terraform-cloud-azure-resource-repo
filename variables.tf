variable "subscription_id" {
  description = "Azure subscription ID"
  sensitive   = true
}

variable "client_id" {
  description = "Azure client ID"
  sensitive   = true
}

variable "client_secret" {
  description = "Azure client secret"
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure tenant ID"
  sensitive   = true
}

variable "resource_group_name" {
  description = "Name of the existing Resource Group"
  type        = string
}

variable "location" {
  description = "Location of the Key Vault"
  type        = string
}

variable "keyvault_name" {
  description = "Name of the Key Vault"
  type        = string
}

variable "keyvault_sku_name" {
  description = "SKU name of the Key Vault"
  type        = string
}

variable "soft_delete_enabled" {
  description = "Soft delete enabled"
  type        = bool
}

variable "tags" {
  description = "List of maps containing tag key-value pairs"
  type        = list(object({
    tag_key   = string
    tag_value = string
  }))
}
