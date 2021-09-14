module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = local.eks_cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  subnets         = module.vpc.private_subnets


  worker_groups = [
    {
      instance_type = "m4.large"
      asg_max_size  = 2
    }
  ]

  manage_aws_auth = false
}
