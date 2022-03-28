##########################################################################
# App Service Plan Ouput variables
##########################################################################

output "App_Service_Plan_Name" {
  value = azurerm_app_service_plan.App_plan.name
}

output "App_Service_Plan_id" {
  value = azurerm_app_service_plan.App_plan.id
}