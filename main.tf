terraform {
  required_version = "= 0.13.2"
}

provider "azurerm" {
  version         = "=2.27.0"
  use_msi         = false
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

resource "azurerm_resource_group" "perm_common" {
  name     = "rg-test"
  location = "northeurope"
}
