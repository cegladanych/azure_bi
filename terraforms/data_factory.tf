resource "azurerm_data_factory" "bigdataadf" {
  name                = format("kv%03s%03d", random_string.demo.result, var.instance)
  location            = azurerm_resource_group.bigdatarg.location
  resource_group_name = azurerm_resource_group.bigdatarg.name
  
  tags = {
    project = "bigdatademo"
  }
}