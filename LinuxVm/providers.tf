terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }

  backend "azurerm" {

    resource_group_name = "storage_account_saurabh"

    storage_account_name = "storageaccount17june"

    container_name = "statefile"

    key = "terraform.tfstate"
    
  }
}

provider "azurerm" {
  # Configuration options
  features {

  }
}
