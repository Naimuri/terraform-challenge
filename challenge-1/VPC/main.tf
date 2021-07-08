resource "aws_vpc" "interviewChallenge1" {
	cidr_block = "192.168.7.0/24"
	enable_dns_hostnames = true
	tags = {
		Name = var.VPC_Name
	}
}

resource "aws_internet_gateway" "challenge1Gateway" {
	vpc_id = aws_vpc.interviewChallenge1.id
}

resource "aws_subnet" "EC2Subnet" {
	vpc_id = aws_vpc.interviewChallenge1.id
	cidr_block = "192.168.7.0/28"
	map_public_ip_on_launch = true
	availability_zone = "eu-west-2a"
	tags = {
		Name = "EC2 Subnet"
	}
}

resource "aws_subnet" "RDSSubnet" {
	vpc_id = aws_vpc.interviewChallenge1.id
	cidr_block = "192.168.7.16/28"
	map_public_ip_on_launch = true
	availability_zone = "eu-west-2a"
	tags = {
		Name = "RDS Subnet"
	}
}

resource "aws_route_table" "challenge1RT" {
	vpc_id = aws_vpc.interviewChallenge1.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.challenge1Gateway.id
	}
	tags = {
		Name = "challenge 1 route table"
	}
}

resource "aws_route_table_association" "EC2_RTA" {
	subnet_id = aws_subnet.EC2Subnet.id
	route_table_id = aws_route_table.challenge1RT.id
}

resource "aws_route_table_association" "RDS_RTA" {
	subnet_id = aws_subnet.RDSSubnet.id
	route_table_id = aws_route_table.challenge1RT.id
}

resource "aws_network_acl" "main" {
  vpc_id = aws_vpc.interviewChallenge1.id

  egress {
    protocol   = "tcp"
    rule_no    = 1
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 2
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }

	ingress {
    protocol   = "tcp"
    rule_no    = 3
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 81
    to_port    = 81
	}
}
