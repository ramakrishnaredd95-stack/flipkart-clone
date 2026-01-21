terraform {
  required_version = ">=1.4.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "16d60876-2016-4013-9895-cc00224e539c"
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_service_plan" "asp" {
  name                = var.asp
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  os_type  = "Windows"
  sku_name = "B1"
}

resource "azurerm_windows_web_app" "webapp" {
  name                = var.webapp
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      current_stack  = "dotnetcore"
      dotnet_version = "v8.0"
    }
  }
}
