resource "azurerm_databricks_workspace" "bigdatadb" {
  name                = format("kv%03s%03d", random_string.demo.result, var.instance)
  resource_group_name = azurerm_resource_group.bigdatarg.name
  location            = azurerm_resource_group.bigdatarg.location
  sku                 = "standard"
  
  tags = {
    project = "cegladanychdemo"
  }
}