# Lab Instructions: Azure Networking and Storage

This lab guides you through setting up a Virtual Network with subnets, Network Security Groups, and a secure Storage Account with private access using the Azure Portal and CLI tools.

## Prerequisites

- An active Azure subscription
- Azure CLI installed and logged in (`az login`)
- Basic familiarity with Azure Portal

## Step 1: Create a Resource Group

```bash
az group create --name proj2-rg --location eastus
```

## Step 2: Deploy the Virtual Network

Using the ARM template provided:

```bash
cd project-2-networking-storage
az deployment group create \
  --resource-group proj2-rg \
  --template-file templates/vnet-template.json
```

This creates:
- A VNet with address space 10.0.0.0/16
- Web subnet (10.0.1.0/27)
- Database subnet (10.0.0.0/27) with Microsoft.Storage service endpoint

## Step 3: Deploy the Storage Account

```bash
az deployment group create \
  --resource-group proj2-rg \
  --template-file templates/storage-template.json
```

This creates a Storage Account with:
- HTTPS only traffic
- Public blob access disabled
- Microsoft-managed encryption
- Network ACLs set to Deny by default

## Step 4: Create a Network Security Group (Portal)

1. Navigate to Azure Portal > Network Security Groups
2. Click **Create**
3. Select Resource Group: proj2-rg
4. Name: proj2-nsg
5. Region: East US
6. Click **Review + Create**, then **Create**

## Step 5: Associate NSG with Subnet

1. Open the created NSG
2. Go to **Subnets** under Settings
3. Click **Associate**
4. Select VNet: proj2-vnet
5. Select Subnet: Web
6. Click **OK**

## Step 6: Add Inbound Security Rule

1. In the NSG, go to **Inbound security rules**
2. Click **Add**
3. Configure:
   - Source: Any
   - Source port ranges: *
   - Destination: Any
   - Service: HTTPS
   - Action: Allow
   - Priority: 100
   - Name: Allow-HTTPS
4. Click **Add**

## Step 7: Configure Private Endpoint for Storage (Optional)

1. Go to your Storage Account
2. Navigate to **Networking** > **Private endpoint connections**
3. Click **+ Private endpoint**
4. Configure the endpoint to use the Database subnet
5. Complete the wizard

## Step 8: Verify Encryption Settings

1. Open your Storage Account in the Portal
2. Go to **Encryption** under Security + networking
3. Verify Microsoft-managed keys are enabled

## Cleanup

To avoid charges, delete the resource group:

```bash
az group delete --name proj2-rg --yes --no-wait
```

## Summary

In this lab, you learned how to:
- Create a Virtual Network with multiple subnets
- Configure service endpoints for Azure services
- Deploy a secure Storage Account with ARM templates
- Set up Network Security Groups for traffic control
- Enable private endpoints for secure access
