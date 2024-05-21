resource_group_name = "maz-cac-dev-k8s-rg01"
location              = "East US"
keyvault_name         = "test-keyvault01111"
keyvault_sku_name     = "standard"
soft_delete_enabled   = false
tags = [
  {
    tag_key   = "env"
    tag_value = "dev"
  },
  {
    tag_key   = "cloud_provider"
    tag_value = "azure"
  },
  {
    tag_key   = "costcenter"
    tag_value = "cist01"
  }
]
