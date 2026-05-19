# DevOps Zero-Downtime Deployment

This project demonstrates a zero-downtime deployment strategy for an ASP.NET Core 8 Web API using AWS ECS Fargate, Application Load Balancer, Blue-Green deployment, GitHub Actions, Amazon ECR, AWS CodeDeploy, CloudWatch, and Terraform.

## Project Goal

The goal is to deploy a containerized ASP.NET Core API to AWS ECS Fargate with zero downtime during application releases.

## Architecture Overview

The deployment architecture includes:

- ASP.NET Core 8 Web API
- Docker
- Amazon ECR
- ECS Fargate
- ECS Blue Service
- ECS Green Service
- Application Load Balancer
- Blue Target Group
- Green Target Group
- AWS CodeDeploy
- CloudWatch
- GitHub Actions
- Terraform

## Deployment Strategy

This project uses a Blue-Green deployment strategy.

- Blue environment: currently live application version
- Green environment: new application version
- ALB target groups route traffic between environments
- CodeDeploy validates the new version before switching traffic
- CloudWatch monitors health and supports rollback

## Project Structure

```text
devops-zeropdowntime-deployment/
├── .github/
│   └── workflows/
├── app/
├── diagrams/
├── docs/
├── scripts/
└── terraform/