
output "datafactory_name" {
  value = azurerm_data_factory.bigdataadf.name
}

output "resouce_group_name" {
  value = azurerm_resource_group.bigdatarg.name
}

output "sql_server_name" {
    value = azurerm_sql_server.bigdataserver.name
}

output "sql_database_name" {
    value = azurerm_sql_database.bigdataserverdb.name
}

output "storage_account_name" {
    value = azurerm_storage_container.bigdatastore.name
}