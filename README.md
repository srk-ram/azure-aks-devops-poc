# Azure AKS DevOps Deployment POC

## Project Overview

This project demonstrates how an application can be deployed to Azure Kubernetes Service using Terraform, Docker, Azure Container Registry, Kubernetes, GitHub Actions, Azure Key Vault, autoscaling, rollout safety, and Azure Monitor.

The project follows a real DevOps workflow covering infrastructure provisioning, container image creation, automated deployment, application configuration, monitoring, troubleshooting, and documentation.

## Project Flow

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
Kubernetes Service exposes the application  
↓  
ConfigMap, Secret, and Key Vault handle configuration  
↓  
HPA handles autoscaling  
↓  
Rollout and rollback provide release safety  
↓  
Azure Monitor provides operational visibility  
↓  
GitHub repository provides project evidence

## Repository Structure

```text
azure-aks-devops-poc/
├── app/
│   └── Application source code and Dockerfile
│
├── terraform/
│   └── Azure infrastructure code
│
├── kubernetes/
│   └── Kubernetes deployment configuration
│
├── .github/
│   └── workflows/
│       └── GitHub Actions workflow files
│
├── docs/
│   └── Architecture, deployment, operations, and troubleshooting documents
│
├── .gitignore
│   └── Prevents sensitive and generated files from being tracked
│
└── README.md
    └── Main project documentation
```

## Planned Azure Resources

- Azure Resource Group
- Azure Virtual Network and Subnet
- Azure Container Registry
- Azure Kubernetes Service
- Azure Key Vault
- Azure Monitor and Log Analytics

## Technologies

- Microsoft Azure
- Azure Kubernetes Service
- Azure Container Registry
- Terraform
- Docker
- Kubernetes
- GitHub Actions
- Azure Key Vault
- Horizontal Pod Autoscaler
- Azure Monitor
- Git

## Project Capabilities

The completed POC will demonstrate:

- Infrastructure provisioning using Terraform
- Docker image creation
- Container image storage in Azure Container Registry
- Application deployment to AKS
- Kubernetes Service-based application access
- Application configuration using ConfigMaps and Secrets
- Secure secret handling using Azure Key Vault
- Application autoscaling using HPA
- Safe rollout and rollback
- Application and infrastructure monitoring
- CI/CD automation using GitHub Actions
- Troubleshooting and operational documentation

## Current Status

The initial local Git repository and clean project folder structure have been created.

Current completed structure:

- `app/`
- `terraform/`
- `kubernetes/`
- `.github/workflows/`
- `docs/`
- `.gitignore`
- `README.md`

## Security Notes

Sensitive files, Terraform state files, local environment files, Kubernetes access files, and generated files must not be committed to GitHub.

The `.gitignore` file is used to prevent these files from being tracked accidentally.

## Documentation

Detailed project documentation will be maintained under the `docs/` folder, including:

- Architecture
- Deployment guide
- Operations runbook
- Troubleshooting guide
- Cost and security notes