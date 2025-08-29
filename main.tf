module "rg_group" {
  source   = "../child/rg"
  name     = "shivkakanju"
  location = "eastus"
}

module "storage_account1" {
  depends_on               = [module.rg_group]
  source                   = "../child/stg"
  name                     = "stgramu124"
  resource_group_name      = "shivkakanju"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
module "container_account" {
  depends_on            = [module.storage_account1]
  source                = "../child/stgcontainer"
  name                  = "ramukaka1220"
 storage_account_id   = module.storage_account.id
  container_access_type = "private"
}