data "aws_secretsmanager_secret" "password" {
  name = "test-db-password"
  depends_on = [random_password.master, aws_secretsmanager_secret.password, aws_secretsmanager_secret_version.password]
}

data "aws_secretsmanager_secret_version" "password" {
  secret_id = data.aws_secretsmanager_secret.password.id
  depends_on = [random_password.master, aws_secretsmanager_secret.password, aws_secretsmanager_secret_version.password]
}

output "secret_id_pass" {
  value = data.aws_secretsmanager_secret_version.password.secret_string
  sensitive = true
}
resource "aws_db_instance" "default" {
  identifier            = "testdb"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.medium"
  name                 = "mydb"
 
  username             = "dbadmin"
  password             = data.aws_secretsmanager_secret_version.password.secret_string
  publicly_accessible = true 
  db_subnet_group_name = aws_db_subnet_group.default.id
  depends_on = [random_password.master, aws_secretsmanager_secret.password, aws_secretsmanager_secret_version.password]
}