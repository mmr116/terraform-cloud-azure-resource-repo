variable "ARM_SUBSCRIPTION_ID" {
  description = "Azure subscription ID"
  sensitive   = true
}

variable "ARM_CLIENT_ID" {
  description = "Azure client ID"
  sensitive   = true
}

variable "ARM_CLIENT_SECRET" {
  description = "Azure client secret"
  sensitive   = true
}

variable "ARM_TENANT_ID" {
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
