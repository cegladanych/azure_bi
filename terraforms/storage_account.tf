resource "azurerm_storage_account" "bigdatasa" {
  name                     = format("%03s%03d", random_string.demo.result, var.instance)
  resource_group_name      = azurerm_resource_group.bigdatarg.name
  location                 = azurerm_resource_group.bigdatarg.location
  account_tier             = "Standard"
  account_kind             = "StorageV2" 
  account_replication_type = "LRS"
  is_hns_enabled           = "true"
  
  tags = {
    project = "cegladanychdemo"
  }
}

resource "azurerm_storage_container" "bigdatastore" {
  for_each = toset(var.landing_storage_containers)
  name                  = each.key
  storage_account_name  = azurerm_storage_account.bigdatasa.name
  container_access_type = "private"
  depends_on = [
    azurerm_storage_account.bigdatasa
  ]
  
}
