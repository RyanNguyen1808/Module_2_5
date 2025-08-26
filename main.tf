module "ec2" {
  source         = "./Modules/EC2"
  instance_type  = "t3.micro"
  instance_count = 1
  vpc_id         = "vpc-0bdb0cb7149a39365"
  enable_public_subnet  = true
  key_name = "ec2 key pair"
}

module "rds"{
  source         = "./Modules/DB/RDS"

  rds_engine = "mysql"
  rds_engine_version = "8.0.42"
  rds_multi_az = false
  rds_instance_identifier = "mysql-database"
  rds_master_username = "admin"
  rds_instance_class = "db.t4g.micro"
  vpc_id = "vpc-0bdb0cb7149a39365"
  rds_allocate_storage = 20
}

module "dynamoDB"{
  source = "./Modules/DB/DynamoDB"

  table_name = "ryan-bookinventory"
  partition_key = "ISBN"
  partition_key_data_type = "S"
  sort_key = "Genre"
  sort_key_data_type = "S"
}