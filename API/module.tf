##########################################################################
# Resource Group Deployment
##########################################################################

module "dev_resource_group" {
  source      = "./Infra_Modules/RG"
  rg_name     = "${local.resource_name_prefix}-${var.rg_name}"
  rg_location = var.location
  tags        = local.common_tags
}

##########################################################################
# AppService Plan Deployment
##########################################################################

module "AppService_Plan" {
  source                = "./Infra_Modules/AppService_plan"
  App_Service_plan_name = "${local.resource_name_prefix}-${var.App_Service_plan_name}"
  #App-Service-plan = "test-plan01"
  rg_name       = "${local.resource_name_prefix}-${var.rg_name}"
  kind          = var.kind
  reserved      = var.reserved
  app_plan_tier = var.app_plan_tier
  app_plan_sku  = var.app_plan_sku
  tags          = local.common_tags
  depends_on    = [module.dev_resource_group]
}
##########################################################################
# AppService Plan Deployment with Nodjs configuration
##########################################################################

module "AppService_Nodjs" {
  source                = "./Infra_Modules/AppService"
  rg_name               = "${local.resource_name_prefix}-${var.rg_name}"
  App_Service_Plan_Name = "${local.resource_name_prefix}-${var.App_Service_plan_name}"
  AppServiceName        = "${local.resource_name_prefix}-${var.AppServiceName}"
  https_only            = var.https_only
  nodeversion           = var.nodeversion
  ftps_state            = var.ftps_state
  http2_enabled         = var.http2_enabled
  always_on             = var.always_on
  tags                  = local.common_tags
  depends_on            = [module.AppService_Plan]
}
