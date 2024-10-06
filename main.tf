terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_ecs_cluster" "this" {
  name = "${var.cluster_name}-${var.environment}"

  tags = {
    Name        = "${var.cluster_name}-${var.environment}"
    Environment = var.environment
  }
}