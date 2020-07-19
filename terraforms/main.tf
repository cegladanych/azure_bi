provider "azurerm" {
  version                    = "=2.19.0"
  skip_provider_registration = true
  features {}
  }

  resource "random_string" "randomname" {
  length  = 6
  upper   = false
  lower   = true
  number  = false
  special = false
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "bigdatarg" {
  name     = format("rg_azurebi_%s", random_string.randomname.result)
  location = var.location
}