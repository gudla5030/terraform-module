##########################################################################
# Virtual Network  required Data Resources
##########################################################################

data "azurerm_client_config" "config" {}

data "azurerm_resource_group" "rg_name" {
  name = var.rg_name
}

data "azurerm_virtual_network" "vNet" {
  name                = var.vnet_name
  resource_group_name = data.azurerm_resource_group.rg_name.name
}

data "azurerm_subnet" "vNet_Subnet" {
  name                 = "${data.azurerm_virtual_network.vNet.name}-${var.subnet_name}"
  virtual_network_name = data.azurerm_virtual_network.vNet.name
  resource_group_name  = data.azurerm_resource_group.rg_name.name
}