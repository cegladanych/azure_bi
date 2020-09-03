terraform {
  backend "azurerm" {
    resource_group       = "azurebi"
    storage_account_name = ""
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}