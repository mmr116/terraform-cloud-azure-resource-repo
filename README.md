# terraform-cloud-azure-resource-repo
# Azure Cloud Resource Deployment using Terraform Cloud (Azure Key Vault is used as an example)

# Overview

This repository contains Terraform configuration files for deploying an Azure Key Vault using Terraform Cloud. This demonstration showcases how Terraform Cloud and GitHub can be utilized to deploy Azure resources.

# Assumptions
# Terraform Version
Terraform v1.8.2

# Terraform Cloud Structure

Make sure you have Terraform Cloud Account (https://app.terraform.io). Additional structure required:
Terraform Cloud Organization: Create or use an existing organization within your Terraform Cloud account. 
Terraform Cloud Project: Create or use an existing project within your Terraform Cloud account.
Workspace: Create a workspace within the project, which will be linked to this GitHub repository.

# Integration with GitHub

The Terraform workspace is integrated with this GitHub repository using Terraform Version Control Workflow (VCS-driven workflow). This integration ensures that whenever code is committed to the repository, a Terraform run is triggered automatically. Additional configurations can be done to ensure if Terraform plan and Terraform apply will run automatically or with operator's approval.

# Terraform Run within Terraform Workspace (Workspaces -> Runs)

# Terraform Plan: 
During the run, Terraform will generate an execution plan to show what changes will be made.
# Terraform Apply: 
After reviewing the plan, the changes can be applied to deploy the resources.

# Auto Apply

Sets this workspace to automatically apply changes for successful runs. If disabled (below options), runs require operator approval for executing the Terraform plan and Terraform apply. (Workspaces -> Settings -> General)

- Auto-apply API, CLI, & VCS runs (Automatically apply changes when a terraform plan is successfull)
- Auto-apply run triggers (Run Triggers create new plan)

# Deployment Step

# Secrets Management

The Azure Service Principal information required for deployment, such as the client ID, client secret, subscription ID, and tenant ID, are stored as sensitive variables in Terraform Cloud Workspace.

ARM_SUBSCRIPTION_ID, ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID
These values must be stored in Terraform Cloud as sensitive variables to ensure they are kept secure.

# Clone Repository

Clone this repository to your local machine: git clone repository-url

# Review and Modify Configuration

Review the configuration files (main.tf, variables.tf) to ensure they match your requirements. Adjust the configuration as necessary.

# Commit Changes to GitHub

git add .
git status
git commit -m "Your commit message"
git push origin main

# Terraform Cloud Run

Terraform Plan: 
Terraform Cloud will automatically create an execution plan showing what changes will be made to your infrastructure.
Terraform Apply: 
After reviewing and confirming the plan in the Terraform Cloud interface, the changes will be applied to deploy the resources.

# Verify Deployment
After a successful deployment, verify that the Azure Key Vault and other resources are created as expected.

# Cleanup

To clean up the deployed resources, use Terraform to destroy them. This can be triggered from the Terraform Cloud interface. (Workspace -> Destruction and Deletion)



