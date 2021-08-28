terraform {
  required_version = "~> 0.15.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.46.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }

}

provider "azurerm" {
  features {}

  subscription_id = "100d644a-87d9-447d-9e30-41dbea1dc20f"
  client_id       = "8d993b30-8433-411a-887f-099e73d377a0"
  client_secret   = "s_CKexLbP.13P2_q2VK~4aZ~wRDyaOq259"
  tenant_id       = "cdc1d3d2-2bb9-498f-8206-21ac0b3ffa65"

}