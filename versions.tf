terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }

  backend "azurerm" {
    # Details configured by Github Action
    resource_group_name  = "myResourceGroup"
    storage_account_name = "mystorageacct18230"
    container_name       = "mycontainer"
    key                  = "terraform.backend.tfstate"
    use_azuread_auth     = true
    use_oidc             = true
  }
}
