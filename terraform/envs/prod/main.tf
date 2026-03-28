provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "../../modules/vpc"

  name = "prod-vpc"
  cidr = "10.0.0.0/16"

  azs = ["ap-south-1a", "ap-south-1b"]

  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  intra_subnets   = ["10.0.5.0/24", "10.0.6.0/24"]

  s3_bucket_arn = "arn:aws:s3:::my-flowlogs"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name = "prod-eks"
  vpc_id       = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnets
}
