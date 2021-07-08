variable "EC2SubnetID" {
    description = "Subnet ID for EC2 Subnet"
    type = string
}

variable "RDSSubnetID" {
    description = "Subnet ID for RDS Subnet"
    type = string
}

variable "instanceType" {
    description = "Type of EC2 Instance"
    type = string
    default = "t2.micro"
}