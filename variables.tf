variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy the ECS cluster"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}