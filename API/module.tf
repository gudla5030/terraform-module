##########################################################################
# Resource Group Deployment
##########################################################################

module "resource_group" {
  source      = "./Infra_Modules/RG"
  rg_name     = "${local.resource_name_prefix}-${var.rg_name}"
  rg_location = var.location
  tags        = local.common_tags
}

##########################################################################
# Virtual Network Deployment
##########################################################################

module "virtual_network" {
  source      = "./Infra_Modules/vNet"
  rg_name     = "${local.resource_name_prefix}-${var.rg_name}"
 vnet_name = "${local.resource_name_prefix}-${var.vnet_name}"
 vnet_address = var.vnet_address
 vnet_internal_subnet01 = var.vnet_internal_subnet01 
 vnet_int_sub01_address = var.vnet_int_sub01_address
 #rg_name = var.rg_name
 depends_on = [module.resource_group]
}

##########################################################################
# Virtual Network Deployment
##########################################################################

module "virtual_Machine" {
  source      = "./Infra_Modules/VM-PM2"
  rg_name     = "${local.resource_name_prefix}-${var.rg_name}"
 vnet_name = "${local.resource_name_prefix}-${var.vnet_name}"
 #vnet_address = var.vnet_address
 subnet_name  = var.vnet_internal_subnet01
 vm_pip_name  = var.vm_pip_name
 allocation   = var.allocation
 vm_nic       = var.vm_nic
 ipconfig     = var.ipconfig
 vm_name      = var.vm_name 
 vm_size      = var.vm_size 
 user_name    = var.user_name
 password     = var.password
 caching      = var.caching 
 account      = var.account
 publisher    = var.publisher
 offer        = var.offer
 sku          = var.sku
 ver          = var.ver
 #customfile   = var.customfile

#depends_on            = [module.virtual_network]
  depends_on = [
    module.virtual_network
  ]
}

##########################################################################
# AppService Plan Deployment
##########################################################################

# module "AppService_Plan" {
#   source                = "./Infra_Modules/AppService_plan"
#   App_Service_plan_name = "${local.resource_name_prefix}-${var.App_Service_plan_name}"
#   #App-Service-plan = "test-plan01"
#   rg_name       = "${local.resource_name_prefix}-${var.rg_name}"
#   kind          = var.kind
#   reserved      = var.reserved
#   app_plan_tier = var.app_plan_tier
#   app_plan_sku  = var.app_plan_sku
#   tags          = local.common_tags
#   depends_on    = [module.resource_group]
# }
##########################################################################
# AppService Plan Deployment with Nodjs configuration
##########################################################################

# module "AppService_Nodjs" {
#   source                = "./Infra_Modules/AppService"
#   rg_name               = "${local.resource_name_prefix}-${var.rg_name}"
#   App_Service_Plan_Name = "${local.resource_name_prefix}-${var.App_Service_plan_name}"
#   AppServiceName        = "${local.resource_name_prefix}-${var.AppServiceName}"
#   https_only            = var.https_only
#   nodeversion           = var.nodeversion
#   ftps_state            = var.ftps_state
#   http2_enabled         = var.http2_enabled
#   always_on             = var.always_on
#   tags                  = local.common_tags
#   depends_on            = [module.AppService_Plan]
# }
