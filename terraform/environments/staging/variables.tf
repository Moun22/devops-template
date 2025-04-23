# Define staging-specific input variables for the VPC module
variable "vpc_cidr" {
  description = "The CIDR block for the VPC in the staging environment"
  type        = string
  default     = "10.2.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones to use for the subnets in the staging environment"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "tags" {
  description = "A map of tags to apply to resources in the staging environment"
  type        = map(string)
  default     = {
    Environment = "staging"
    Project     = "staging-project"
  }
}

variable "project_name" {
  description = "The name of the project for the staging environment"
  type        = string
  default     = "staging-project"
}

# Define staging-specific input variables for the ECS module
variable "cluster_name" {
  description = "The name of the ECS cluster in the staging environment"
  type        = string
  default     = "staging-cluster"
}

variable "region" {
  description = "The AWS region to deploy the ECS cluster in the staging environment"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The instance type for the ECS instances in the staging environment"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "The desired number of instances in the ECS cluster for the staging environment"
  type        = number
  default     = 3
}