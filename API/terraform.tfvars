##########################################################################
# Resource Group values
##########################################################################

rg_name  = "Test-RG01"
location = "eastus"

##########################################################################
# Virtual Network values
##########################################################################

 #rg_name    = "Test-RG01"
 vnet_name  = "API-Test-vNet01"
 vnet_address = ["192.168.0.0/16"]
 vnet_internal_subnet01 = "API-Subnet01"
 vnet_int_sub01_address = ["192.168.1.0/24"]

##########################################################################
# Virtual Machine values
##########################################################################

 vm_pip_name = "pip01"
 allocation = "Dynamic"
 vm_nic = "vm01_nic"
 ipconfig = "internal"
 vm_name = "Test-VM01"
 vm_size = "Standard_B1ls"
 user_name = "azadmin"
 password = "Password@123"
 caching = "ReadWrite"
 account = "Standard_LRS"
 publisher = "Canonical"
 offer = "UbuntuServer"
 sku = "18.04-LTS"
 ver = "latest"
 #customfile = "filebase64("PM2.sh")"
##########################################################################
# App Service Plan Values
##########################################################################


App_Service_plan_name = "test-plan01"
kind                  = "linux"
reserved              = "true"
app_plan_tier         = "Standard"
app_plan_sku          = "S1"
app_plan_rgname       = "Test-RG01"

##########################################################################
# App Service/Web App values
##########################################################################

AppServiceName = "Test-App01"
#client_cert_enabled = false
https_only    = true
ftps_state    = "FtpsOnly"
http2_enabled =  true
nodeversion   = "NODE|16-lts"
always_on     = true

# # Please provide the location value ex: "Central US"
# location = "Central US"
# # Please provide the virtualnetwork name ex: "vams-vnet"
# vnet = "vams-vnet"
# # Please provide the subnet name ex: "vams-subnet"
# subnet = "vams-subnet"
# # Please provide the network interface name ex: "vams-network"
# network = "vams-network"
# # Please provide the ipconfig value ex: "internal"
# ipconfig = "internal"
# # Please provide the allocation value ex: "Dynamic"
# allocation = "Dynamic"
# # Please provide the virtual machine name ex: "vams-vm"
# vmachine = "vams-vm"
# # Please provide the vm size ex: "Standard_D2s_v3"
# size = "Standard_D2s_v3"
# # Please provide the user name ex: "useradmin"
# user = "useradmin"
# # Please provide the password ex: "P@ssword"
# passwd = "P@ssword"
# # Please provide the caching value ex: "ReadWrite"
# caching = "ReadWrite"
# # Please provide the account value ex: "Standard_LRS"
# account = "Standard_LRS"
# # Please provide the publisher value ex: "Canonical"
# publisher = "Canonical"
# # Please provide the offer value ex: "UbuntuServer"
# offer = "UbuntuServer"
# # Please provide the sku value ex: "18.04-LTS"
# sku = "18.04-LTS"
# # Please provide the version value ex: "latest"
# ver = "latest"
# # Please provide the pub_ip value ex: "vams-app-public-ip"
# pub_ip = "vams-app-public-ip"
# # Please provide the allocation_method value ex: "Static"
# allocation_method = "Static"
# # Please provide the ip_1 value ex: "10.0.0.0/16"
# ip_1 = "10.0.0.0/16"
# # Please provide the ip_2 value ex: "10.0.2.0/24"
# ip_2 = "10.0.2.0/24"
# # Please provide the resource group name ex: "RG-DEV-DEMO"
# rg = "Test-RG01"