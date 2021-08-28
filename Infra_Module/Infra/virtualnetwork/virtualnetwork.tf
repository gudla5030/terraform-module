data "azurerm_resource_group" "rg_name" {
  name     = var.rg_name
  }

resource "azurerm_virtual_network" "vNet" {
  name                = var.vNet
  address_space       = var.IP_Address_Range
  resource_group_name = var.rg_name
  location            = var.rg_location
  count               = var.vnet_count

  tags = {
    environment = var.tag_env_name
  }
}

#Internal Subnet Creations
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vNet[count.index].name
  address_prefixes     = var.Subnet_range
  count                = var.subnet_count
}