##########################################################################
# App Service  required Data Resources
##########################################################################

data "azurerm_resource_group" "rg_name" {
  name = var.rg_name
}
data "azurerm_app_service_plan" "app_service_plan" {
  name                = var.App_Service_Plan_Name
  resource_group_name = data.azurerm_resource_group.rg_name.name
}