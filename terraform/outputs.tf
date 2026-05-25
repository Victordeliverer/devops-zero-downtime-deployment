output "green_target_group_name" {
  description = "Green target group name"
  value       = module.alb.green_target_group_name
}

output "green_target_group_arn" {
  description = "Green target group ARN"
  value       = module.alb.green_target_group_arn
}

output "production_listener_arn" {
  description = "Production listener ARN"
  value       = module.alb.production_listener_arn
}

output "test_listener_arn" {
  description = "Test listener ARN"
  value       = module.alb.test_listener_arn
}

output "codedeploy_app_name" {
  description = "CodeDeploy application name"
  value       = module.codedeploy.codedeploy_app_name
}

output "codedeploy_deployment_group_name" {
  description = "CodeDeploy deployment group name"
  value       = module.codedeploy.codedeploy_deployment_group_name
}

output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = module.ecr.repository_url
}

output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = module.ecs.ecs_cluster_name
}

output "ecs_service_name" {
  description = "ECS service name"
  value       = module.ecs.ecs_service_name
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.networking.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.networking.public_subnet_ids
}

output "alb_url" {
  description = "Public URL of the Application Load Balancer"
  value       = "http://${module.alb.alb_dns_name}"
}

output "alb_dns_name" {
  description = "Public DNS name of the Application Load Balancer"
  value       = module.alb.alb_dns_name
}

output "blue_target_group_arn" {
  description = "Blue target group ARN"
  value       = module.alb.blue_target_group_arn
}