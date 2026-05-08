#!/bin/bash

# Variables
RESOURCE_GROUP="myResourceGroup"
LOCATION="centralindia"
STORAGE_ACCOUNT="mystorageacct$RANDOM"
CONTAINER_NAME="mycontainer"

# Create Resource Group
echo "Creating Resource Group..."
az group create \
  --name $RESOURCE_GROUP \
  --location $LOCATION

# Create Storage Account
echo "Creating Storage Account..."
az storage account create \
  --name $STORAGE_ACCOUNT \
  --resource-group $RESOURCE_GROUP \
  --location $LOCATION \
  --sku Standard_LRS \
  --kind StorageV2

# # Get Storage Account Key
# echo "Fetching Storage Account Key..."
# ACCOUNT_KEY=$(az storage account keys list \
#   --resource-group $RESOURCE_GROUP \
#   --account-name $STORAGE_ACCOUNT \
#   --query "[0].value" \
#   --output tsv)

# Create Blob Container
echo "Creating Blob Container..."
az storage container create \
  --name $CONTAINER_NAME \
  --account-name $STORAGE_ACCOUNT \
  --account-key $ACCOUNT_KEY

echo "----------------------------------------"
echo "Storage Account Created: $STORAGE_ACCOUNT"
echo "Container Created: $CONTAINER_NAME"
echo "----------------------------------------"