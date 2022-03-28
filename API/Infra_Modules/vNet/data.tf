##########################################################################
# App Service  required Data Resources
##########################################################################

data "azurerm_resource_group" "rg_name" {
  name = var.rg_name
}