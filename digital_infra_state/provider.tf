terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.12.0"
    }
  }
  backend "local" {}
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
}