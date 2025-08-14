variable "aws_region"         { type = string default = "{{ cookiecutter.aws_region }}" }

variable "db_identifier"      { type = string default = "{{ cookiecutter.db_identifier }}" }
variable "db_engine"          { type = string default = "{{ cookiecutter.db_engine }}" }
variable "engine_version"     { type = string default = "{{ cookiecutter.engine_version }}" }
variable "instance_class"     { type = string default = "{{ cookiecutter.instance_class }}" }

variable "db_name"            { type = string default = "{{ cookiecutter.db_name }}" }
variable "db_username"        { type = string default = "{{ cookiecutter.db_username }}" }
variable "db_password"        { type = string sensitive = true }

variable "backup_retention_period" { type = number default = {{ cookiecutter.backup_retention_period }} }
variable "deletion_protection"     { type = bool   default = {{ cookiecutter.deletion_protection }} }

variable "db_subnet_group_name" { type = string default = "{{ cookiecutter.db_subnet_group_name }}" }
variable "db_security_group_id" { type = string default = "{{ cookiecutter.db_security_group_id }}" }
variable "kms_key_id"           { type = string default = "{{ cookiecutter.kms_key_id }}" }
