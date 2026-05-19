# Zero-Downtime Deployment Diagram

```text
Developer
   |
   v
GitHub Repository
   |
   v
GitHub Actions Pipeline
   |
   |-- Build ASP.NET Core API
   |-- Run Tests
   |-- Build Docker Image
   |-- Push Image to ECR
   |
   v
Amazon ECR
   |
   v
AWS CodeDeploy
   |
   v
ECS Fargate Cluster
   |
   +-----------------------------+
   |                             |
   v                             v
Blue ECS Service             Green ECS Service
   |                             |
   v                             v
Blue Target Group            Green Target Group
   \                             /
    \                           /
     v                         v
      Application Load Balancer
                |
                v
              Users
                |
                v
          CloudWatch Monitoring