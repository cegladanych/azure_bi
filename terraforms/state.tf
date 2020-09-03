terraform {
  backend "azurerm" {
    resource_group       = ""
    storage_account_name = ""
    container_name       = ""
    key                  = "terraform.tfstate"
  }
}