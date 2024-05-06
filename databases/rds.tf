resource "aws_db_subnet_group" "database_subnet_group" {
  name       = "Alaa-DB-SN-Group"
  subnet_ids = [module.network.subnets["private1"].id, module.network.subnets["private2"].id]
  
  tags = {
    Name = "${var.custom_common_resource_name}_database_Subnet_Group"
  }
}

resource "aws_db_instance" "rds_db" {
  allocated_storage    = 10
  db_name              = "cloud_pd44_mysql_rds"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "cloud44"
  password             = "cloud@1234"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.database_subnet_group.name
}
