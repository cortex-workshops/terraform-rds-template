# terraform/main.tf
resource "aws_db_instance" "dev_db" {
  identifier        = "dev-db-instance"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "admin"
  password          = "password123"
  db_name           = "devdb"
  multi_az          = false
  storage_encrypted = true
  final_snapshot_identifier = "dev-db-final-snapshot"
}
