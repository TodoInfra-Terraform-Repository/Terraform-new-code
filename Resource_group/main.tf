terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c316f505-7597-4175-b5db-d2949009d506"

}

resource "azurerm_resource_group" "RG" {
  name     = "rg-surendra1"
  location = "West Europe"
}
resource "azurerm_resource_group" "RG1" {
  name     = "rg-surendra2"
  location = "West Europe"
}

resource "azurerm_resource_group" "RG2" {
  name     = "rg-surendra3"
  location = "West Europe"
}
resource "azurerm_storage_account" "Stg" {
  depends_on               = [azurerm_resource_group.RG]
  name                     = "storagsurendra1"
  resource_group_name      = "rg-surendra1"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

}