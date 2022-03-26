data "azurerm_client_config" "example" {}

data "azurerm_resource_group" "mygroup" {
  name = var.rg
}