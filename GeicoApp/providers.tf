
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  #subscription_id = "6912d7a0-bc28-459a-9407-33bbba641c07"
  #tenant_id = "70c0f6d9-7f3b-4425-a6b6-09b47643ec58"
  #client_id = "fb3eb97c-8679-488e-a4b4-5fd90299b7a2"
  #client_secret = "38o8Q~MsAPo59FK.Zsq0eQImB-vW2wrJznAUqc9V"
  features {}  
}