# AWS Infrastructure as Code (IaC)
This repository manages AWS infrastructure for the CloudVikings project using Terraform.

## Environments
- **Development**: `environments/dev`
- **Production**: `environments/prod`

## How to Deploy
1. Clone the repository.
2. Navigate to the desired environment: `cd environments/dev`.
3. Initialize Terraform: `terraform init`.
4. Plan changes: `terraform plan -var-file="terraform.tfvars"`.
5. Apply changes: `terraform apply -var-file="terraform.tfvars"`.

## Automation
Use the CI/CD pipeline for automated Terraform deployments.


## Run the script
chmod +x scripts/deploy.sh
./scripts/deploy.sh dev
