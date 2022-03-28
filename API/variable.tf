variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "sap"
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

##########################################################################
# Resource Group Variables
##########################################################################

variable "rg_name" {
  description = "Provide the Resource Group Name"
  type        = string

}
variable "location" {
  description = "Provide the Resource Group Location"
  type        = string

}

##########################################################################
# Virtual Network Variables
##########################################################################

#variable "rg_name" {}
variable "vnet_name" {

}
variable "vnet_address" {

}

variable "vnet_internal_subnet01" {

}
variable "vnet_int_sub01_address" {

}

##########################################################################
# Virtual Machine Variables
##########################################################################
variable "vm_pip_name" { }
variable "allocation" {
    type = string
}
variable "vm_nic" {
  
}
variable "ipconfig" {}


variable "vm_name" {
    type = string
}

variable "vm_size" {
    type = string
}

variable "user_name" {
    type = string
}

variable "password" {
    type = string
}

variable "caching" {
    type = string
}

variable "account" {
    type = string
}

variable "publisher" {
    type = string
}

variable "offer" {
    type = string
}

variable "sku" {
    type = string
}

variable "ver" {
    type = string
}
#variable "customfile" { }

##########################################################################
# AppService Plan Variables
##########################################################################

variable "App_Service_plan_name" {}
variable "app_plan_rgname" {}
variable "kind" {}
variable "reserved" {}
variable "app_plan_tier" {}
variable "app_plan_sku" {}

##########################################################################
# Appservice or WebApp Variables
##########################################################################

variable "AppServiceName" {}
variable "https_only" {}
#variable "linux_fx_version" {}
variable "ftps_state" {}
variable "http2_enabled" {}
variable "nodeversion" {}
variable "always_on" {}

##########################################################################
# Appservice or WebApp Variables
##########################################################################


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
