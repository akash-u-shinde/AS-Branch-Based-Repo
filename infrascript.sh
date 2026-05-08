#!/bin/bash

RESOURCE_GROUP_NAME=Demo-RG
STORAGE_ACCOUNT_NAME=demo-dev-ci-sa
CONTAINER_NAME=backend.tfstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location centralindia

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME