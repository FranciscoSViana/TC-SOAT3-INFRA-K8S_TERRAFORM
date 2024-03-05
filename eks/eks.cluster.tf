module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.5.0"

  cluster_name    = local.cluster_name
  cluster_version = "1.29"

  vpc_id                         = module.vpc.vpc_id
  subnet_ids                     = module.vpc.public_subnets
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      name = "node-group-1"

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
    two = {
      name = "node-group-1"

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}
