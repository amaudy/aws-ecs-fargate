# AWS ECS (Fargate) Terraform Module

This Terraform module provisions an AWS ECS (Fargate) cluster.

## Usage

```hcl
module "ecs_cluster" {
  source = "path/to/module"

  cluster_name = "my-cluster"
  aws_region   = "us-west-2"
  environment  = "dev"
}

output "cluster_arn" {
  value = module.ecs_cluster.cluster_arn
}

output "cluster_name" {
  value = module.ecs_cluster.cluster_name
}
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| cluster_name | Name of the ECS cluster | string | Yes |
| aws_region | AWS region to deploy the ECS cluster | string | Yes |
| environment | Environment name (e.g., dev, staging, prod) | string | Yes |

## Outputs

| Name | Description |
|------|-------------|
| cluster_arn | ARN of the ECS cluster |
| cluster_name | Name of the ECS cluster |

## Requirements

- Terraform 0.12+
- AWS provider 4.0+

## License

This module is released under the MIT License.

