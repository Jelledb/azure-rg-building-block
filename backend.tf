terraform {
  backend "azurerm" { 
    resource_group_name  = "jelles-rg"
    storage_account_name = "jellestfstorage"
    container_name       = "tfstates"
    key                  = "jelles-azure-rg-building-block"
  }
}