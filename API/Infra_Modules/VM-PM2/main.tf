##########################################################################
# Public IP Deployment
##########################################################################

resource "azurerm_public_ip" "vm_pip" {
  name                = "${var.vm_name}-${var.vm_pip_name}"
  resource_group_name = data.azurerm_resource_group.rg_name.name
  location            = data.azurerm_resource_group.rg_name.location
  allocation_method   = var.allocation
  }

##########################################################################
# Virtual interface Deployment (NIC card)
##########################################################################

resource "azurerm_network_interface" "vm_nic" {
  name                = "${var.vm_name}-${var.vm_nic}"
  location            = data.azurerm_resource_group.rg_name.location
  resource_group_name = data.azurerm_resource_group.rg_name.name
  ip_configuration {
    name                          = var.ipconfig
    subnet_id                     = data.azurerm_subnet.vNet_Subnet.id
    private_ip_address_allocation = var.allocation
    public_ip_address_id = azurerm_public_ip.vm_pip.id
  }
 depends_on = [
      azurerm_public_ip.vm_pip
  ]
}

##########################################################################
# Virual Machine Deployment
##########################################################################

resource "azurerm_linux_virtual_machine" "vm" {
  name                            = var.vm_name
  resource_group_name             = data.azurerm_resource_group.rg_name.name
  location                        = data.azurerm_resource_group.rg_name.location
  size                            = var.vm_size
  admin_username                  = var.user_name
  admin_password                  = var.password
  disable_password_authentication = false
  custom_data                     = filebase64("./PM2.sh")  
  network_interface_ids = [
    azurerm_network_interface.vm_nic.id,
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
    azurerm_network_interface.vm_nic
  ]
}

