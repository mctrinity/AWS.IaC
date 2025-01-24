project_name       = "cloudvikings-dev"
cidr_block         = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
azs                = ["us-east-1a", "us-east-1b"]

ecs_task_cpu       = "256"
ecs_task_memory    = "512"
ecs_desired_count  = 2
container_image    = "nginx:latest" # Replace with your image

project_name          = "cloudvikings-dev"

# RDS Configuration
rds_allocated_storage = 20
rds_engine            = "postgres"
rds_engine_version    = "13.3"
rds_instance_class    = "db.t3.micro"
rds_db_name           = "devdb"
rds_username          = "admin"
rds_password          = "securepassword123"
