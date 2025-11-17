resource "azurerm_resource_group" "AIDA" {
  location = var.resource_group_location
  name     = var.resource_group_name
}