variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Name of the project used for tagging AWS resources"
  type        = string
  default     = "zero-downtime-api"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}