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
