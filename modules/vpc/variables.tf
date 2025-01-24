variable "project_name" {
  type        = string
  description = "Project name for tagging"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of public subnet CIDR blocks"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
}
