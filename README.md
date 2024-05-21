# terraform-cloud-azure-resource-repo
# Azure Cloud Resource Deployment using Terraform Cloud (Azure Key Vault is used as an example)

# Overview

This repository contains Terraform configuration files for deploying an Azure Key Vault using Terraform Cloud. This demonstration showcases how Terraform Cloud and GitHub can be utilized to deploy Azure resources.

# Assumptions
# Terraform Version
Terraform v1.8.2

# Terraform Cloud Structure

Make sure you have Terraform Cloud Account. Additional structure required:
Terraform Cloud Organization: Create or use an existing organization within your Terraform Cloud account. 
Terraform Cloud Project: Create or use an existing project within your Terraform Cloud account.
Workspace: Create a workspace within the project, which will be linked to this GitHub repository.

# Integration with GitHub

The Terraform workspace is integrated with this GitHub repository. This integration ensures that whenever code is committed to the repository, a Terraform run is triggered automatically.

# Terraform Run with Terraform Workspace

Terraform Plan: During the run, Terraform will generate an execution plan to show what changes will be made.
Terraform Apply: After reviewing the plan, the changes can be applied to deploy the resources.

# Secrets Management

The Azure Service Principal information required for deployment, such as the client ID, client secret, subscription ID, and tenant ID, are stored as sensitive variables in Terraform Cloud Workspace.

ARM_SUBSCRIPTION_ID, ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID
These values must be stored in Terraform Cloud as sensitive variables to ensure they are kept secure.

