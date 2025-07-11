provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  vpc_name = var.vpc_name
  cidr_block = var.vpc_cidr_block
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  region = var.region
  availability_zones = var.availability_zones
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source = "./modules/eks"
  cluster_name = var.cluster_name
  subnet_ids = module.vpc.private_subnet_ids
  vpc_id = module.vpc.vpc_id
  region = var.region
  node_group_desired_capacity = var.node_group_desired_capacity
  node_group_max_size = var.node_group_max_size
  node_group_min_size = var.node_group_min_size
  eks_role_arn = module.iam.eks_role_arn
  node_role_arn = module.iam.node_role_arn
  instance_type = var.instance_type
  ami_type = var.ami_type
  disk_size = var.disk_size
}

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.this.token
}

data "aws_eks_cluster_auth" "this" {
  name = module.eks.cluster_name
}
