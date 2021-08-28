resource "azurerm_resource_group" "rg_name" {
  name     = var.rg_name
  location = var.rg_location
  tags = {
    environment = var.tag_env_name
  }
}