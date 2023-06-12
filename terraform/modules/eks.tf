

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "eks-${var.cluster_name}"
  cluster_version = "1.25"
  subnet_ids      = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  cluster_endpoint_private_access = var.eks_public_access
  cluster_endpoint_public_access  = var.eks_private_access

  eks_managed_node_groups = {
    Nodes = {
      desired_capacity = 1
      max_capacity     = 3
      min_capacity     = 1

      instance_type = var.instance_type
    }
  }


}
