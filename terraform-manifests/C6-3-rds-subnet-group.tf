resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [aws_subnet.subnet1-public.id, aws_subnet.subnet2-public.id, aws_subnet.subnet3-public.id]

  tags = {
    Name = "My DB subnet group"
  }
}


