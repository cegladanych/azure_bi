resource "azurerm_resource_group" "bigdatarg" {
  name     = format("kv%03s%03d", random_string.demo.result, var.instance)
  location = "eastus"
  
  tags = {
    project = "bigdatademo"
  }
}