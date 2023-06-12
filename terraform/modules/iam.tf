module "eks_admins_iam_role" {
  source                  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  role_name               = "eks-admin"
  create_role             = true
  role_requires_mfa       = false
  custom_role_policy_arns = [module.allow_eks_access_iam_policy.arn]

  trusted_role_arns = [
    "arn:aws:iam::${module.vpc.vpc_owner_id}:root"
  ]
}

module "eks_admins_iam_group" {
  source                            = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  name                              = "eks-admin"
  attach_iam_self_management_policy = false
  create_group                      = true
  group_users                       = ["julia"]
  custom_group_policy_arns          = [module.allow_assume_eks_admins_iam_policy.arn]
}
