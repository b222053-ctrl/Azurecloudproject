# Azure Resource Governance & Security Lab

[![Azure](https://img.shields.io/badge/Azure-Cloud-0078D4?style=flat&logo=microsoft-azure)](https://azure.microsoft.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Status](https://img.shields.io/badge/Status-Active-success.svg)]()

> **A hands-on project demonstrating enterprise-grade Azure governance, security, and cost management practices.**

This project showcases the deployment of a secure Azure Virtual Machine with comprehensive governance controls including Role-Based Access Control (RBAC), Azure Policy enforcement, Key Vault integration, and cost monitoring—essential skills for Azure cloud engineers.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Project Scenario](#project-scenario)
- [Skills Demonstrated](#skills-demonstrated)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Project Steps](#project-steps)
- [Learning Outcomes](#learning-outcomes)
- [Technologies Used](#technologies-used)
- [Cost Considerations](#cost-considerations)
- [Contributing](#contributing)
- [License](#license)

---

## 🎯 Overview

This project simulates a real-world enterprise scenario where a company needs to deploy a secure virtual machine for their web application while enforcing governance policies, managing access control, securing sensitive data, and monitoring costs.

**Perfect for:**
- 🎓 Learning Azure governance and security best practices
- 💼 Building portfolio projects for recruiters
- 🏢 Understanding enterprise cloud management
- 📊 Gaining hands-on experience with Azure services

---

## 🏗️ Architecture

![Azure Governance Architecture](Architecture.jpeg)
### Key Components:

1. **RBAC (Role-Based Access Control)**
   - AppAdmins with Virtual Machine Contributor role
   - Owner with Virtual Machine Contributor role

2. **Virtual Machine (VM)**
   - Secure deployment with Network Security Group (NSG)
   - Static Private IP configuration
   - Attached Sensitive Data Disk

3. **Network Security**
   - NSG allowing SSH (Port 22) only
   - HTTPS (Port 443) blocked for security testing

4. **Azure Key Vault (AppSecretsKV)**
   - Secure storage for SSH private keys
   - Import functionality for secrets management

5. **Azure Policy**
   - Naming convention enforcement (Prefix: "PROD-VM-")
   - Resource type restrictions (Virtual Machines only)
   - Compliance monitoring and reporting

6. **Cost Management + Billing**
   - Monthly budget limit: $500
   - Alert notifications at 50%, 80%, 100% thresholds
   - Cost Analysis for optimized spending
   - Azure Advisor recommendations

---

## 📖 Project Scenario

**Business Requirement:**

A company wants to deploy a virtual machine for their web application with the following requirements:

- ✅ Secure access control using RBAC
- ✅ Enforce naming conventions and governance policies
- ✅ Encrypt and securely store sensitive data (SSH keys)
- ✅ Monitor and control cloud spending
- ✅ Ensure compliance with security standards

---

## 💡 Skills Demonstrated

### Azure Core Services
- ☁️ **Azure Virtual Machines** - Compute resource deployment and management
- 🔐 **Azure Key Vault** - Secrets and key management
- 🛡️ **Network Security Groups** - Network-level security controls
- 👥 **Microsoft Entra ID** - Identity and access management

### Governance & Compliance
- 📜 **Azure Policy** - Policy definition and enforcement
- 🏷️ **Tagging Strategy** - Resource organization and cost allocation
- ✅ **Compliance Management** - Policy compliance monitoring

### Security Best Practices
- 🔒 **RBAC Implementation** - Least privilege access control
- 🔑 **Key Management** - Secure storage of sensitive credentials
- 🌐 **Network Security** - Firewall rules and traffic control

### Cost Management
- 💰 **Budget Creation** - Spending limits and forecasting
- 📊 **Cost Analysis** - Spending trends and optimization
- 🔔 **Alert Configuration** - Proactive cost monitoring

---

## ✅ Prerequisites

Before starting this project, ensure you have:

- [ ] **Azure Subscription** (Free trial available at [azure.com](https://azure.microsoft.com/free))
- [ ] **Azure Portal Access** (web browser)
- [ ] **Basic understanding** of cloud computing concepts
- [ ] **Optional:** Azure CLI installed locally

### Estimated Costs

- VM (Standard_B2s): ~$30-40/month
- Storage (managed disks): ~$5-10/month
- Key Vault: ~$0.03/10,000 operations
- **Total estimated: $35-50/month**

> 💡 **Tip:** Remember to delete resources after completing the lab to avoid unnecessary charges!

---

## 🚀 Getting Started

### Quick Start Guide

1. **Clone this repository**
   ```bash
   git clone https://github.com/b222053-ctrl/Azurecloudproject.git
   cd Azurecloudproject
   ```

2. **Follow the step-by-step issues**
   - Start with [Issue #2: Deploy a Secure Virtual Machine](https://github.com/b222053-ctrl/Azurecloudproject/issues/2)
   - Progress through each numbered issue sequentially

3. **Track your progress**
   - Mark issues as complete as you finish each step
   - Document any challenges or learnings in issue comments

---

## 📝 Project Steps

This project is divided into 5 main steps, each with detailed instructions:

### [Step 1: Deploy a Secure Virtual Machine](https://github.com/b222053-ctrl/Azurecloudproject/issues/2) 🟢
- Create Azure VM with proper security configuration
- Configure networking with static IP and NSG
- Set up storage with data disk

### [Step 2: Implement RBAC & Secure Key Storage](https://github.com/b222053-ctrl/Azurecloudproject/issues/3) 🔵
- Create Azure Key Vault for secrets management
- Configure RBAC with least privilege principle
- Store VM private keys securely

### [Step 3: Access the VM & Test Network Security](https://github.com/b222053-ctrl/Azurecloudproject/issues/4) 🟢
- Connect to VM via SSH
- Verify NSG rules are working correctly
- Test network security configuration

### [Step 4: Apply Azure Policy for Governance](https://github.com/b222053-ctrl/Azurecloudproject/issues/5) 🔵
- Create custom Azure Policy Initiative
- Enforce naming conventions and tagging
- Validate policy compliance

### [Step 5: Monitor and Control Azure Costs](https://github.com/b222053-ctrl/Azurecloudproject/issues/6) 🟢
- Set up budget with spending alerts
- Configure cost notifications
- Review optimization recommendations

---

## 🎓 Learning Outcomes

After completing this project, you will be able to:

✅ Deploy and configure Azure Virtual Machines with security best practices  
✅ Implement Role-Based Access Control (RBAC) for least privilege access  
✅ Create and assign Azure Policies for governance and compliance  
✅ Manage secrets and keys using Azure Key Vault  
✅ Configure Network Security Groups (NSGs) for traffic control  
✅ Set up cost management with budgets and alerts  
✅ Analyze and optimize Azure spending  
✅ Work with Microsoft Entra ID for identity management  

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| **Azure Virtual Machines** | Compute resources |
| **Azure Key Vault** | Secrets management |
| **Azure Policy** | Governance and compliance |
| **Microsoft Entra ID** | Identity and access management |
| **Network Security Groups** | Network security |
| **Azure Cost Management** | Budget and cost monitoring |
| **Azure CLI** | Command-line management |
| **Azure Portal** | Web-based management |

---

## 💰 Cost Considerations

### Expected Monthly Costs

| Resource | Estimated Cost |
|----------|---------------|
| Standard_B2s VM | $30-40 |
| Managed Disk (32 GB) | $5-10 |
| Key Vault | $0.03/10K operations |
| **Total** | **~$35-50/month** |

### Cost Optimization Tips

- 🔄 Stop/deallocate VMs when not in use
- 📉 Use Azure Advisor recommendations
- 🏷️ Leverage tagging for cost allocation
- 📊 Regularly review Cost Analysis dashboard
- ⏰ Set up auto-shutdown schedules for non-production VMs

---

## 📚 Additional Resources

- [Azure Documentation](https://docs.microsoft.com/azure/)
- [Azure Architecture Center](https://docs.microsoft.com/azure/architecture/)
- [Azure Security Best Practices](https://docs.microsoft.com/azure/security/)
- [Azure Policy Samples](https://github.com/Azure/azure-policy)
- [Azure Cost Management Best Practices](https://docs.microsoft.com/azure/cost-management-billing/)

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**b222053-ctrl**

- GitHub: [@b222053-ctrl](https://github.com/b222053-ctrl)
- Repository: [Azurecloudproject](https://github.com/b222053-ctrl/Azurecloudproject)

---

## 🌟 Acknowledgments

- Microsoft Azure documentation and learning resources
- Azure community for best practices and guidance
- Enterprise cloud governance patterns and standards

---

## 📞 Support

If you have questions or need help:

1. Check the [Issues](https://github.com/b222053-ctrl/Azurecloudproject/issues) for existing discussions
2. Create a new issue with your question
3. Review Azure documentation for specific service details

---

**⭐ If you found this project helpful, please consider giving it a star!**

---

*Last Updated: 2025-11-16*