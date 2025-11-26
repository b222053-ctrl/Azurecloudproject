# Project 2: Azure Networking and Storage

This project demonstrates deploying a secure storage account, creating VNets and NSGs for isolation, enabling encryption, and automating resource deployment using ARM templates.

Topics covered: Virtual Networks, Network Security Groups, Storage Accounts, Encryption, Private Endpoints, ARM templates, Az CLI.

Time: ~0.75 hours

Contents:
- templates/vnet-template.json - ARM template to create a Virtual Network with two subnets (Web, Database) and service endpoint on Database subnet for Microsoft.Storage.
- templates/storage-template.json - ARM template to create a Storage Account configured for private access and Microsoft-managed encryption. It accepts a subnet resource ID to add a Virtual Network Rule.
- scripts/deploy_templates.sh - Simple script that deploys the VNet template and then the Storage template (uses az CLI).
- lab/instructions.md - Step by step lab instructions matching the project scenario.

See lab/instructions.md for step-by-step guidance to run the lab in the Azure Portal and with CLI tools.
