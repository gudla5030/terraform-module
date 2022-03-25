##########################################################################
# App Service Output variables
##########################################################################

output "App_Service_name" {
  value = azurerm_app_service.Web_App_nodejs.name
}