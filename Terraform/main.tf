terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" {
  skip_provider_registration = true
  subscription_id 	     = var.subscription_id
  client_id                  = var.client_id
  client_secret              = var.client_secret
  tenant_id                  = var.tenant_id
  features {} 
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location
}

module "AKS" {
  source                	  = "./AKS"
  resource_group_name 	 	  = azurerm_resource_group.resource_group.name
  resource_group_location	  = azurerm_resource_group.resource_group.location
  node_count		 	  = var.node_count
  vm_size			  = var.vm_size
  client_id			  = var.client_id
  client_secret			  = var.client_secret
}

module "postgresql" {
  source              	   	  = "./postgresql"
  resource_group_name 	   	  = azurerm_resource_group.resource_group.name
  resource_group_location 	  = azurerm_resource_group.resource_group.location
  storage_mb			  = var.storage_mb
  backup_retention_days		  = var.backup_retention_days
  geo_redundant_backup_enabled    = var.geo_redundant_backup_enabled
  auto_grow_enabled		  = var.auto_grow_enabled
  administrator_login		  = var.administrator_login
  administrator_login_password    = var.administrator_login_password
}

