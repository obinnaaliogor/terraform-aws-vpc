module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"
  name = "vpc-dev"
  cidr = "10.0.0.0/20"

  azs             = ["us-east-2a", "us-east-2c"]
  private_subnets = ["10.0.0.0/23", "10.0.2.0/23"]
  public_subnets  = ["10.0.4.0/23", "10.0.6.0/23"]
  

  enable_nat_gateway = true
  single_nat_gateway = true

  #create_igw = true, it creates this by default

  database_subnets = ["10.0.8.0/23", "10.0.10.0/23"]
  create_database_subnet_group = true
  create_database_subnet_route_table = true

  enable_dns_hostnames = true
  enable_dns_support = true


  private_subnet_tags = {
    type = "private_subnets"
  }
  
  public_subnet_tags = {
    type = "public_subnets"
  }

database_subnet_tags = {
    type = "database_subnets"
  }

  vpc_tags = {
    type = "vpc-dev"
  }


  tags = {
# Description: A map of tags to add to all resources
    owner = "Tesla"
    Environment = "dev"
  }
}