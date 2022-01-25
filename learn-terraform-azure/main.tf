# Configure the Azure provider

/*
1. terraform block: Terraform settings
required_providers: infrastructure provider
    source: optional hostname, namespace and provider type
*/

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 1.1.0"
}

/*
2. provider block: config specific provider
A provider is a plugin that Terraform uses to create and manage your resources.
*/

provider "azurerm" {
  features {}
}

/*
3. resource block: define components of infrastructure
resource type -> "azurerm_resource_group"
resource name -> "rg"
*/
resource "azurerm_resource_group" "rg" {
  name     = "TerraformDemo"
  location = "japaneast"
}
