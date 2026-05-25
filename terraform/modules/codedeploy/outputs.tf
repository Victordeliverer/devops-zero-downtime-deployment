output "codedeploy_app_name" {
  description = "CodeDeploy application name"
  value       = aws_codedeploy_app.ecs.name
}

output "codedeploy_deployment_group_name" {
  description = "CodeDeploy deployment group name"
  value       = aws_codedeploy_deployment_group.ecs.deployment_group_name
}

output "codedeploy_role_arn" {
  description = "CodeDeploy role ARN"
  value       = aws_iam_role.codedeploy_role.arn
}