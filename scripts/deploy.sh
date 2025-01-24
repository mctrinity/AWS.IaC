#!/bin/bash

ENV=$1
if [ -z "$ENV" ]; then
  echo "Usage: ./deploy.sh <environment>"
  exit 1
fi

cd environments/$ENV || exit 1

echo "Initializing Terraform..."
terraform init

echo "Planning Terraform changes..."
terraform plan -var-file="terraform.tfvars"

echo "Applying Terraform changes..."
terraform apply -var-file="terraform.tfvars" -auto-approve
