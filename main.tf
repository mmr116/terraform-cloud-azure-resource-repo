provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "example" {
  name                = var.keyvault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.ARM_TENANT_ID
  sku_name            = var.keyvault_sku_name

  soft_delete_retention_days = 7  # Soft delete retention days; default is 90 days, set as needed

  network_acls {
    bypass         = "AzureServices"
    default_action = "Allow"
  }

  tags = { for tag in var.tags : tag.tag_key => tag.tag_value }
}
