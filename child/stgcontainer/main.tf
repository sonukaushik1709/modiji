resource "azurerm_storage_container" "container1" {
    name = var.name
    storage_account_id = var.storage_account_id
    container_access_type = var.container_access_type
}





# data "azurerm_storage_account" "stg_datablock" {
#   name                = var.storage_account_name         
#   resource_group_name = var.resource_group_name
# }
# data "azurerm_storage_container" "container_datablock" {
#   name               = var.name                
#   storage_account_id = data.azurerm_storage_account.stg_datablock.id
# }
