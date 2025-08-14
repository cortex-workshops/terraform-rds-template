# {{ cookiecutter.repo_name }}

A minimal Terraform config to launch a PostgreSQL RDS instance with safe defaults.

## Quick Start

```bash
# 1. Render the template
cookiecutter gh:cortex-workshops/terraform-rds-template

cd {{ cookiecutter.repo_name }}/terraform
terraform init

# 2. Create terraform.tfvars with your DB password
echo 'db_password = "change-this-strong-secret"' > terraform.tfvars

# Optionally set networking if you have it
# echo 'db_subnet_group_name = "my-private-subnets"' >> terraform.tfvars
# echo
