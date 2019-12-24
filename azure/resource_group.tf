resource "azurerm_resource_group" "seti" {
  name     = "${var.prefix}-resources"
  location = var.location
}