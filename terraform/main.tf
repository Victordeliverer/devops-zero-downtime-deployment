module "networking" {
  source = "./modules/networking"

  project_name = var.project_name
  environment  = var.environment
}

module "ecs" {
  source = "./modules/ecs"

  project_name          = var.project_name
  environment           = var.environment
  aws_region            = var.aws_region
  container_image       = "${module.ecr.repository_url}:latest"
  public_subnet_ids     = module.networking.public_subnet_ids
  ecs_security_group_id = module.networking.ecs_security_group_id
}

module "ecr" {
  source = "./modules/ecr"

  repository_name = "aspnet-api-repo"
  project_name    = var.project_name
  environment     = var.environment
}