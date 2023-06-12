module "dev_cluster" {
  source             = "./modules"
  cluster_name       = "eu-north-1-dev"
  instance_type      = "t3.medium"
  eks_public_access  = true
  eks_private_access = true

}


# module "production_cluster" {
#   source        = "./modules"
#   cluster_name  = "production"
#   instance_type = "m5.large"
# }


