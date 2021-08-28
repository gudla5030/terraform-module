locals {
  env = "dev"
}
module "rg_name" {
  source       = "../Infra/Resource_Group"
  rg_name      = "tf-Dev-RG01"
  tag_env_name = local.env
  rg_location  = "eastus"

}
module "virtualnetwork" {
  source           = "../Infra/virtualnetwork"
  vNet             = "${local.env}-vn"
  IP_Address_Range = ["192.168.0.0/16"]
  rg_name          = module.rg_name.rg_name
  rg_location      = "eastus"          #module.rg_name.rg_location
  subnet_name      = "${local.env}-sn" #replace(var.vNet, "-vn", "-sn")
  Subnet_range     = ["192.168.1.0/24"]
  vnet_count       = 1
  subnet_count     = 1
  tag_env_name     = local.env
  depends_on       = [module.rg_name,]
}

# module "nsg" {
#   source = "../Infra/NSG"

#   nsg_name     = "${local.env}-nsg-01"
#   rg_location  = module.rg_name.location
#   rg_name      = module.rg_name.resource_group_id
#   tag_env_name = local.env
#   subnet_id    = module.virtualnetwork.subnet_id
#   depends_on   = [module.virtualnetwork]
# }