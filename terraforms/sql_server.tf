resource "azurerm_sql_server" "bigdataserver" {
  name                         = format("sql%03s%03s", random_string.randomname.result, var.environment)
  resource_group_name          = azurerm_resource_group.bigdatarg.name
  location                     = azurerm_resource_group.bigdatarg.location
  version                      = "12.0"
  administrator_login          = "azurebiadmin"
  administrator_login_password = "Password1234"
  
  tags = {
    project = "bigdatademo"
  }
}

resource "azurerm_sql_database" "bigdataserverdb" {
  name                = format("sql%03s%03s", random_string.randomname.result, var.environment)
  resource_group_name = azurerm_resource_group.bigdatarg.name
  location            = azurerm_resource_group.bigdatarg.location
  server_name         = azurerm_sql_server.bigdataserver.name
  create_mode         = "Default"
  edition             = "Standard"
  requested_service_objective_name = "S1"
  
  tags = {
    project = "cegladanychdemo"
  }
}