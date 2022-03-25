##########################################################################
# Resource Group values
##########################################################################

rg_name  = "" #Test-RG01
location = "eastus"

##########################################################################
# App Service Plan Values
##########################################################################


App_Service_plan_name = "" #"test-plan01"
kind                  = "linux"
reserved              = "true"
app_plan_tier         = "Standard"
app_plan_sku          = "S1"
app_plan_rgname       = "Test-RG01"

##########################################################################
# App Service/Web App values
##########################################################################

AppServiceName = "" #"Test-App01"
#client_cert_enabled = false
https_only    = true
ftps_state    = "FtpsOnly"
http2_enabled =  true
nodeversion   = "NODE|16-lts"
always_on     = true