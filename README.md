# Azure AKS DevOps Deployment POC

## Overview

This project demonstrates an end-to-end DevOps workflow for deploying a containerized application to Azure Kubernetes Service (AKS).

The solution uses GitHub Actions for CI/CD automation, Docker for containerization, Azure Container Registry for image storage, Terraform for Azure infrastructure provisioning, Kubernetes for application deployment, and Azure Monitor for operational visibility.

---

## Architecture Flow

```text
Developer pushes code to GitHub
↓
GitHub Actions pipeline starts
↓
Docker image is built
↓
Image is pushed to Azure Container Registry
↓
Terraform provisions Azure infrastructure
↓
AKS runs the application
↓
Service exposes the application
↓
ConfigMap / Secret / Key Vault handle config
↓
HPA handles autoscaling
↓
Rollout / rollback gives release safety
↓
Azure Monitor gives operational visibility
↓
GitHub repo proves the work
```

---

## Technology Stack

| Area | Technology |
|---|---|
| Source control | Git and GitHub |
| CI/CD | GitHub Actions |
| Infrastructure as Code | Terraform |
| Cloud platform | Microsoft Azure |
| Containerization | Docker |
| Container registry | Azure Container Registry |
| Container orchestration | Azure Kubernetes Service |
| Application deployment | Kubernetes manifests |
| Configuration management | ConfigMap and Kubernetes Secret |
| Secret management | Azure Key Vault |
| Autoscaling | Horizontal Pod Autoscaler |
| Monitoring | Azure Monitor |
| Terraform state | Azure Blob Storage remote backend |

---

## Project Scope

- Maintain application and infrastructure code in GitHub
- Build the application as a Docker image
- Push container images to Azure Container Registry
- Provision Azure infrastructure using Terraform
- Store Terraform state securely in Azure Blob Storage
- Deploy the containerized application to Azure Kubernetes Service
- Expose the application through a Kubernetes Service
- Manage application configuration using ConfigMap
- Manage sensitive configuration using Kubernetes Secret and Azure Key Vault
- Configure application autoscaling using HPA
- Perform safe rollout and rollback operations
- Monitor the application and infrastructure using Azure Monitor
- Automate the end-to-end workflow using GitHub Actions

---

## Repository Structure

```text
azure-aks-devops-poc/
├── .github/
│   └── workflows/       # GitHub Actions workflows
├── app/                 # Application code and Dockerfile
├── terraform/           # Azure infrastructure configuration
├── kubernetes/          # Kubernetes manifests
├── docs/                # Project documentation
├── .gitignore           # Git exclusion rules
└── README.md            # Project overview
```

---

## Security Notes

- Terraform state is stored in a private Azure Blob Storage backend.
- Azure access uses Microsoft Entra identities and Azure RBAC.
- Secrets, credentials, Terraform state files, and generated Terraform working files are excluded from Git.
- Azure Key Vault is used for secure application secret management.
- Terraform plans must be reviewed before infrastructure changes are applied.