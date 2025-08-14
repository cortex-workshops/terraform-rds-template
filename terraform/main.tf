terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 5.0" }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "this" {
  identifier      = var.db_identifier
  engine          = var.db_engine
  engine_version  = var.engine_version
  instance_class  = var.instance_class

  # Simple storage setup
  storage_type          = "gp3"
  allocated_storage     = 20
  max_allocated_storage = 100

  # Credentials
  username = var.db_username
  password = var.db_password
  db_name  = var.db_name
  port     = 5432

  # Good defaults that are still simple
  publicly_accessible   = false
  storage_encrypted     = true
  kms_key_id            = var.kms_key_id
  backup_retention_period = var.backup_retention_period
  copy_tags_to_snapshot   = true

  # Safety
  deletion_protection   = var.deletion_protection
  skip_final_snapshot   = false
  final_snapshot_identifier = "${var.db_identifier}-final"

  # Optional networking if you have them
  db_subnet_group_name   = var.db_subnet_group_name != "" ? var.db_subnet_group_name : null
  vpc_security_group_ids = var.db_security_group_id != "" ? [var.db_security_group_id] : null

  # Gentle updates
  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = true
  apply_immediately           = false

  # Light observability, still simple
  enabled_cloudwatch_logs_exports = ["postgresql", "upgrade"]
}

output "endpoint" { value = aws_db_instance.this.endpoint }
