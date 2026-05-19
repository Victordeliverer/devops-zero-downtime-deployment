# Architecture Design

## Objective

Design a zero-downtime deployment architecture for an ASP.NET Core 8 Web API running on AWS ECS Fargate.

## Main Components

### 1. GitHub Repository

Stores the application code, Terraform infrastructure code, scripts, documentation, and GitHub Actions workflow files.

### 2. GitHub Actions

Used for CI/CD automation.

Pipeline responsibilities:

- Restore .NET dependencies
- Build the ASP.NET Core API
- Run tests
- Build Docker image
- Push Docker image to Amazon ECR
- Trigger deployment to ECS using CodeDeploy

### 3. ASP.NET Core 8 API

The backend application that will be containerized and deployed.

### 4. Docker

Used to package the ASP.NET Core API into a container image.

### 5. Amazon ECR

Stores Docker images.

### 6. ECS Fargate

Runs the containerized API without managing EC2 servers.

### 7. ECS Blue Service

Represents the currently active production version.

### 8. ECS Green Service

Represents the new version during deployment.

### 9. Application Load Balancer

Receives user traffic and forwards it to the active target group.

### 10. Target Groups

Two target groups are used:

- Blue Target Group
- Green Target Group

During deployment, traffic is shifted from one target group to the other.

### 11. AWS CodeDeploy

Controls the blue-green deployment process.

Responsibilities:

- Create new task set
- Validate health checks
- Shift traffic
- Roll back if deployment fails

### 12. CloudWatch

Used for:

- Logs
- Metrics
- Alarms
- Deployment monitoring
- Rollback signals

## Deployment Flow

1. Developer pushes code to GitHub.
2. GitHub Actions starts the CI/CD workflow.
3. The .NET API is built and tested.
4. Docker image is created.
5. Docker image is pushed to Amazon ECR.
6. GitHub Actions triggers CodeDeploy.
7. CodeDeploy creates the new ECS task set.
8. ALB health checks validate the new version.
9. Traffic moves from Blue to Green.
10. CloudWatch monitors the deployment.
11. If the deployment fails, CodeDeploy rolls back automatically.