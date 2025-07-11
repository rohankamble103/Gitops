variable "cluster_name" {}
variable "subnet_ids" {
  type = list(string)
}
variable "vpc_id" {}
variable "region" {}
variable "node_group_desired_capacity" {}
variable "node_group_max_size" {}
variable "node_group_min_size" {}
variable "eks_role_arn" {}
variable "node_role_arn" {}
variable "instance_type" {}
variable "ami_type" {}
variable "disk_size" {}
