provider "azurerm" {
  version                    = "=2.14.0"
  skip_provider_registration = true
  features {}
  }

  resource "random_string" "demo" {
  length           = 4
  override_special = "-_"
  keepers = {
    # Generate a new integer each time we switch to a new listener ARN
    instance = "${var.instance}"
  }
}

