##########################################################################
# vNet and Subnet Deployment
##########################################################################

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address
  location            = var.vNet_rg_location
  resource_group_name = var.vNet_rg_name
}

resource "azurerm_subnet" "vNet_Inter_sub01" {
  name                 = "${azurerm_virtual_network.batch4_vNet01.name}-${var.vnet_internal_subnet01}"
  resource_group_name  = var.vNet_rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vnet_int_sub01_address
}