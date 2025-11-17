resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "${var.storage_account_name}${random_string.resource_code.result}"
  resource_group_name      = azurerm_resource_group.AIDA.name
  location                 = azurerm_resource_group.AIDA.location
  account_tier             = var.storage_account_tier
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = false

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "${var.storage_container_name}${random_string.resource_code.result}"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}