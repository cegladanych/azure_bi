resource "azurerm_databricks_workspace" "bigdatadb" {
  name                = format("db%03s%03s", random_string.randomname.result, var.environment)
  resource_group_name = azurerm_resource_group.bigdatarg.name
  location            = azurerm_resource_group.bigdatarg.location
  sku                 = "standard"
  
  tags = {
    project = "cegladanychdemo"
  }
}