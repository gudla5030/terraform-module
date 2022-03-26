terraform {
  required_providers {
    azurerm={
      version="2.98.0"
      source="hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}

  skip_provider_registration = true
}