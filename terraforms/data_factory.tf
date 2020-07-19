resource "azurerm_data_factory" "bigdataadf" {
  name                = format("adf%03s%03s", random_string.randomname.result, var.environment)
  location            = azurerm_resource_group.bigdatarg.location
  resource_group_name = azurerm_resource_group.bigdatarg.name
  
  tags = {
    project = "bigdatademo"
  }
}