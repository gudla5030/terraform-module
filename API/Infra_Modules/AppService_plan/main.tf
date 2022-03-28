##########################################################################
# App Service Plan Deployment
##########################################################################

resource "azurerm_app_service_plan" "App_plan" {
  name                = var.App_Service_plan_name
  resource_group_name = data.azurerm_resource_group.rg_name.name
  location            = data.azurerm_resource_group.rg_name.location
  kind                = var.kind
  reserved            = var.reserved
  sku {
    tier = var.app_plan_tier #"Standard"
    size = var.app_plan_sku #"S1"
  }
  tags = var.tags
}