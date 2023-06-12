
variable "cluster_name" {
  default = "eu-north-1"
}


variable "region" {
  default = "eu-north-1"
}
variable "eks_public_access" {
  description = "AWS EKS API public endpoint configuration"
  type        = bool
}

variable "eks_private_access" {
  description = "AWS EKS API private endpoint configuration"
  type        = bool
}


variable "instance_type" {
  description = "eks instance type"

}
