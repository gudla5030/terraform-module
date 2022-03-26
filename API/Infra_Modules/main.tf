resource "azurerm_virtual_network" "vams_vnet" {
  name                = var.vnet
  address_space       = [var.ip_1]
  location            = var.location
  resource_group_name = data.azurerm_resource_group.mygroup.name
}

resource "azurerm_subnet" "vams_subnet" {
  name                 = var.subnet
  resource_group_name  = data.azurerm_resource_group.mygroup.name
  virtual_network_name = azurerm_virtual_network.vams_vnet.name
  address_prefixes     = [var.ip_2]
}

resource "azurerm_network_interface" "vams_network" {
  name                = var.network
  location            = var.location
  resource_group_name = data.azurerm_resource_group.mygroup.name

  ip_configuration {
    name                          = var.ipconfig
    subnet_id                     = azurerm_subnet.vams_subnet.id
    private_ip_address_allocation = var.allocation
    public_ip_address_id = azurerm_public_ip.app_public_ip.id
  }
 depends_on = [
    azurerm_virtual_network.vams_vnet,
    azurerm_public_ip.app_public_ip
  ]
}

resource "azurerm_public_ip" "app_public_ip" {
  name                = var.pub_ip
  resource_group_name = data.azurerm_resource_group.mygroup.name
  location            = var.location
  allocation_method   = var.allocation_method
  }

resource "azurerm_linux_virtual_machine" "vams_vm" {
  name                            = var.vmachine
  resource_group_name             = data.azurerm_resource_group.mygroup.name
  location                        = var.location
  size                            = var.size
  admin_username                  = var.user
  admin_password                  = var.passwd
  disable_password_authentication = false
  custom_data                     = filebase64("PM2.sh")  
  network_interface_ids = [
    azurerm_network_interface.vams_network.id,
  ]

  os_disk {
    caching              = var.caching
    storage_account_type = var.account
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.ver
  

  }
  depends_on = [
    azurerm_network_interface.vams_network
  ]
}

