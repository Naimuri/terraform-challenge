output "EC2SubnetID" {
    description = "Subnet ID for EC2 Subnet"
    value = aws_subnet.EC2Subnet.id
}

output "RDSSubnetID" {
    description = "Subnet ID for RDS Subnet"
    value = aws_subnet.RDSSubnet.id
}

output "RDSSubnet1ID" {
    description = "Subnet ID for RDS Subnet 1"
    value = aws_subnet.RDSSubnet1.id
}