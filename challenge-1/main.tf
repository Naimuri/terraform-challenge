module "VPC" {
  source = "./VPC"
}

module "Compute" {
  source       = "./Compute"
  EC2SubnetID  = module.VPC.EC2SubnetID
  RDSSubnetID  = module.VPC.RDSSubnetID
  RDSSubnet1ID = module.VPC.RDSSubnet1ID
  instanceType = "t2.micro"
}
