terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }

  #backend "azurerm" {
  #  # Details configured by Github Action
  #  use_azuread_auth = true
  #  use_oidc         = true
  #}
}