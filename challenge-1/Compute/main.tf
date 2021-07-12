resource "aws_instance" "Host" {
  ami                         = "ami-0194c3e07668a7e36"
  instance_type               = var.instanceType
  associate_public_ip_address = true
  subnet_id                   = var.EC2SubnetID
  tags = {
    Name = "Host"
  }
}

resource "aws_db_instance" "HostDB" {
  allocated_storage   = 10
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  name                = "webAppDB"
  username            = "User"
  password            = "5up3r53cur3Pa5sw0rd1337!"
  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "RDSSubnetGroup" {
  subnet_ids = [var.RDSSubnetID, var.RDSSubnet1ID]
}
