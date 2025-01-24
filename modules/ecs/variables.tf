variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where ECS will be deployed"
  type        = string
}

variable "subnets" {
  description = "List of subnets for ECS tasks"
  type        = list(string)
}

variable "task_cpu" {
  description = "CPU units for the ECS task"
  type        = string
}

variable "task_memory" {
  description = "Memory in MiB for the ECS task"
  type        = string
}

variable "desired_count" {
  description = "Number of ECS tasks to run"
  type        = number
}

variable "container_image" {
  description = "Docker image for the container"
  type        = string
}
