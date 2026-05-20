output "vpc_id" {
  description = "VPC ID"
  value       = module.networking.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.networking.public_subnet_ids
}

output "ecs_security_group_id" {
  description = "ECS security group ID"
  value       = module.networking.ecs_security_group_id
}

output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = module.ecs.ecs_cluster_name
}

output "ecs_task_execution_role_arn" {
  description = "ECS task execution role ARN"
  value       = module.ecs.ecs_task_execution_role_arn
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = module.ecr.repository_url
}

output "ecs_task_definition_arn" {
  description = "ECS task definition ARN"
  value       = module.ecs.ecs_task_definition_arn
}

output "ecs_service_name" {
  description = "ECS service name"
  value       = module.ecs.ecs_service_name
}