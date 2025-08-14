# Terraform RDS Cookiecutter Template

This is a [cookiecutter](https://cookiecutter.readthedocs.io/) template for creating a minimal Terraform configuration to deploy a PostgreSQL RDS instance on AWS.

The generated project is intentionally **simple but safe by default**:
- Uses `aws_db_instance` with encryption and backups enabled.
- Creates a final snapshot on deletion.
- Deletion protection is enabled.
- Database is private (`publicly_accessible = false`).
- Password is provided via `terraform.tfvars` and never committed.
