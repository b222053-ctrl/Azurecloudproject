#!/usr/bin/env bash

# Simple deployment script for the lab. Assumes az CLI is installed and you're logged in.
# Usage: ./scripts/deploy_templates.sh <resource-group-name>

set -e

RESOURCE_GROUP="${1:-proj2-rg}"
LOCATION="eastus"

echo "Deploying VNet template..."
az deployment group create \
  --resource-group "$RESOURCE_GROUP" \
  --template-file templates/vnet-template.json

echo "Deploying Storage template..."
az deployment group create \
  --resource-group "$RESOURCE_GROUP" \
  --template-file templates/storage-template.json

echo "Deployment complete!"
