##########################################################################
# Output variables and values
##########################################################################

output "rg_Name" {
  value = module.dev_resource_group.rg_Name
}
output "App_Service_Plan_Name" {
  value = module.AppService_Plan.App_Service_Plan_Name
}

output "App_Service_Name" {
  value = module.AppService_Nodjs.App_Service_name
}