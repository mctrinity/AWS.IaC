project_name          = "cloudvikings-prod"

# VPC Configuration
cidr_block            = "10.1.0.0/16"
public_subnet_cidrs   = ["10.1.1.0/24", "10.1.2.0/24"]
azs                   = ["us-east-1a", "us-east-1b"]

# ECS Configuration
ecs_task_cpu          = "512"
ecs_task_memory       = "1024"
ecs_desired_count     = 4
container_image       = "your-production-image:latest" # Replace with production Docker image

# RDS Configuration
rds_allocated_storage = 50
rds_engine            = "postgres"
rds_engine_version    = "13.3"
rds_instance_class    = "db.t3.medium" # Larger instance for production
rds_db_name           = "proddb"
rds_username          = "admin"
rds_password          = "secureprodpassword123"
