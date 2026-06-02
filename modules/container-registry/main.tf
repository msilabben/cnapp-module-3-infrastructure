resource "random_string" "acr_name" {
  length  = 5
  lower   = true
  numeric = false
  special = false
  upper   = false
}

resource "azurerm_container_registry" "this" {
  name                          = "${var.name_prefix}${random_string.acr_name.result}acr"
  #checkov:skip=CKV_AZURE_139:`public_network_access_enabled` can only be disabled for a Premium Sku
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.sku
  admin_enabled                 = var.acr_admin_enabled

  tags = var.tags
}
