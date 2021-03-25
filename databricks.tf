provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_databricks_workspace" "example" {
  name                = var.databricks_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = var.databricks_sku

  tags = {
    Environment = var.environment
  }
}
