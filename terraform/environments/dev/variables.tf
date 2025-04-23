# Define dev-specific input variables for the VPC module
variable "vpc_cidr" {
  description = "The CIDR block for the VPC in the dev environment"
  type        = string
  default     = "10.1.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones to use for the subnets in the dev environment"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "tags" {
  description = "A map of tags to apply to resources in the dev environment"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "dev-project"
  }
}

variable "project_name" {
  description = "The name of the project for the dev environment"
  type        = string
  default     = "dev-project"
}

# Define dev-specific input variables for the ECS module
variable "cluster_name" {
  description = "The name of the ECS cluster in the dev environment"
  type        = string
  default     = "dev-cluster"
}

variable "region" {
  description = "The AWS region to deploy the ECS cluster in the dev environment"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The instance type for the ECS instances in the dev environment"
  type        = string
  default     = "t3.micro"
}

variable "desired_capacity" {
  description = "The desired number of instances in the ECS cluster for the dev environment"
  type        = number
  default     = 2
}