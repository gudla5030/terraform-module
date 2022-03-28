##########################################################################
# App Service  Deployment for NodeJS
##########################################################################

resource "azurerm_app_service" "Web_App_nodejs" {
  name                = var.AppServiceName
  resource_group_name = data.azurerm_resource_group.rg_name.name
  location            = data.azurerm_resource_group.rg_name.location
  app_service_plan_id = data.azurerm_app_service_plan.app_service_plan.id
  #client_cert_enabled = var.client_cert_enabled
  https_only          = var.https_only

  site_config {
    linux_fx_version         = var.nodeversion
    ftps_state               = var.ftps_state
    #http2_enabled            = var.http2_enabled
    always_on                = var.always_on
  }
  app_settings = {
    "SOME_KEY" = "some-value"

  }
  tags = var.tags
}