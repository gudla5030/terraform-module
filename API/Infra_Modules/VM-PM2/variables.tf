
variable "rg_name" { }
#variable "vm_rg_name" {}
variable "vnet_name" { }
variable "subnet_name" { }
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
# variable "customfile" {
  
# }