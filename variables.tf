# Standard Variables

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  description = "AWS Environment"
  type        = string
}

variable "application" {
  type    = string
  default = "she"
}

# VPC Variables

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "Private subnet  - CIDR"
  type        = list
}
variable "public_subnet_cidrs" {
  description = "Private subnet  - CIDR"
  type        = list
}

#EKS
variable "eks_cluster_name" { 
  default = "" 
}

variable "cluster_name" { 
  description = "EKS Cluster name"
  default     = ""
  type        = string
}

variable "cluster_version" { 
  description = "EKS Cluster version"
  type        = string
}

