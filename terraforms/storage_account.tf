resource "azurerm_storage_account" "bigdatasa" {
  name                     = format("kv%03s%03d", random_string.demo.result, var.instance)
  resource_group_name      = azurerm_resource_group.bigdatarg.name
  location                 = azurerm_resource_group.bigdatarg.location
  account_tier             = "Standard"
  account_kind             = "StorageV2" 
  account_replication_type = "LRS"
  is_hns_enabled           = "true"
  
  tags = {
    project = "bigdatademo"
  }
}

resource "azurerm_storage_container" "bigdatascfl" {
  name                  = "flights"
  storage_account_name  = azurerm_storage_account.bigdatasa.name
  container_access_type = "private"
  
}

resource "azurerm_storage_container" "bigdatascap" {
  name                  = "airlines"
  storage_account_name  = azurerm_storage_account.bigdatasa.name
  container_access_type = "private"
  
}

resource "azurerm_storage_container" "bigdatascar" {
  name                  = "airports"
  storage_account_name  = azurerm_storage_account.bigdatasa.name
  container_access_type = "private"
  
}