module "VPC" {
    source = "./VPC"
}

module "Compute" {
    source = "./Compute"
    EC2SubnetID = module.VPC.EC2SubnetID
    RDSSubnetID = module.VPC.RDSSubnetID
    instanceType = "t2.micro"
}
