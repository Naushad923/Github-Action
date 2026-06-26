terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "4.77.0"
    }
  }
}
provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "rg" {
  name = "git-nau-rg"
  location = "westus"
  
}

resource "azurerm_storage_account" "staccount" {
  name = "naushad15245ba"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  account_tier = "Standard"
  account_replication_type = "LRS"
  
}