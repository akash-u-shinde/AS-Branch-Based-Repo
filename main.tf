provider "azurerm" {
  features {}
  use_oidc = true
}


resource "azurerm_resource_group" "main" {
  location = var.location
  name     = "${var.prefix}-${var.environment}-branch"

  tags = {
    environment = var.environment
    version     = "1.1"
  }
}