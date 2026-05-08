terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }

  backend "azurerm" {
    # Details configured by Github Action
    resource_group_name  = "Demo-RG"
    storage_account_name = "demodevcisa"
    container_name       = "backend"
    key                  = "terraform.backend.tfstate"
    use_azuread_auth     = true
    use_oidc             = true
  }
}