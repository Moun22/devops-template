# Use VPC and ECS modules for the dev environment
# Pass environment-specific variables

module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr         = var.vpc_cidr
  availability_zones = var.availability_zones
  tags             = var.tags
  project_name     = var.project_name
}

module "ecs_cluster" {
  source = "../../modules/ecs_cluster"

  cluster_name     = var.cluster_name
  region           = var.region
  instance_type    = var.instance_type
  desired_capacity  = var.desired_capacity
  vpc_subnet_ids   = module.vpc.private_subnet_ids
}