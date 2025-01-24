variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage for the RDS instance in GB"
  type        = number
}

variable "engine" {
  description = "The database engine to use (e.g., mysql, postgres)"
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "instance_class" {
  description = "The instance type for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "username" {
  description = "The master username for the database"
  type        = string
}

variable "password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "publicly_accessible" {
  description = "Whether the database instance is publicly accessible"
  type        = bool
}

variable "multi_az" {
  description = "Whether the database instance is multi-AZ"
  type        = bool
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS subnet group"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the RDS instance"
  type        = list(string)
}
