module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name = var.cluster_name
  cluster_version = "1.29"

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = false

  enable_irsa = true

  eks_managed_node_groups = {
    on_demand = {
      capacity_type = "ON_DEMAND"
      instance_types = ["m5.large"]
      min_size = 2
      max_size = 5
    }

    spot = {
      capacity_type = "SPOT"
      instance_types = ["m5.large", "m5a.large"]
      min_size = 2
      max_size = 10
    }
  }

  cluster_addons = {
    coredns = {}
    kube-proxy = {}
    vpc-cni = {}
  }
}
