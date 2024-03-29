module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.5.0"

  cluster_name    = local.cluster_name
  cluster_version = "1.29"

  cluster_endpoint_public_access           = true
  enable_cluster_creator_admin_permissions = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      name = "node-group-1"

      instances_type = ["t3.medium"]

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
    two = {
      name = "node-group-2"

      instances_type = ["t3.medium"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}
