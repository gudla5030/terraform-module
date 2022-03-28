##########################################################################
# vNet and Subnet Deployment
##########################################################################

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address
  location            = data.azurerm_resource_group.rg_name.location
  resource_group_name = data.azurerm_resource_group.rg_name.name
}

resource "azurerm_subnet" "vNet_Inter_sub01" {
  name                 = "${azurerm_virtual_network.vnet.name}-${var.vnet_internal_subnet01}"
  resource_group_name  = data.azurerm_resource_group.rg_name.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vnet_int_sub01_address
}