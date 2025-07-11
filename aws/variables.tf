variable "region" {}
variable "vpc_name" {}
variable "vpc_cidr_block" {}
variable "public_subnets" {
  type = list(string)
}
variable "private_subnets" {
  type = list(string)
}
variable "node_group_desired_capacity" {}
variable "node_group_max_size" {}
variable "node_group_min_size" {}
variable "availability_zones" {
  type = list(string)
}

variable "instance_type" {}
variable "ami_type" {}
variable "disk_size" {}
variable "cluster_name" {}
