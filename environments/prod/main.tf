# VPC Module
module "vpc" {
  source             = "../../modules/vpc"
  project_name       = "cloudvikings-prod"
  cidr_block         = "10.1.0.0/16"
  public_subnet_cidrs = ["10.1.1.0/24", "10.1.2.0/24"]
  azs                = ["us-east-1a", "us-east-1b"]
}

# ECS Module
module "ecs" {
  source        = "../../modules/ecs"
  project_name  = "cloudvikings-prod"
  region        = "us-east-1"
  vpc_id        = module.vpc.vpc_id
  subnets       = module.vpc.public_subnets
  task_cpu      = "512"                        # Higher CPU for production
  task_memory   = "1024"                       # Higher memory for production
  desired_count = 4                            # More tasks for production
  container_image = "your-production-image:latest" # Replace with production image
}

# RDS Module
module "rds" {
  source              = "../../modules/rds"
  project_name        = var.project_name
  allocated_storage   = var.rds_allocated_storage
  engine              = var.rds_engine
  engine_version      = var.rds_engine_version
  instance_class      = var.rds_instance_class
  db_name             = var.rds_db_name
  username            = var.rds_username
  password            = var.rds_password
  publicly_accessible = false
  multi_az            = true
  subnet_ids          = module.vpc.private_subnets
  security_group_ids  = [module.vpc.db_security_group]
}
