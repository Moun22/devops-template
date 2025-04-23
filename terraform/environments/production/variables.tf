# Define production-specific variables: CIDRs, ECS cluster name, instance types, and availability zones.

variable "vpc_cidr" {
  description = "The CIDR block for the VPC in the production environment"
  type        = string
  default     = "10.3.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones to use for the subnets in the production environment"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "tags" {
  description = "A map of tags to apply to resources in the production environment"
  type        = map(string)
  default     = {
    Environment = "production"
    Project     = "production-project"
  }
}

variable "project_name" {
  description = "The name of the project for the production environment"
  type        = string
  default     = "production-project"
}

# Define production-specific input variables for the ECS module
variable "cluster_name" {
  description = "The name of the ECS cluster in the production environment"
  type        = string
  default     = "production-cluster"
}

variable "region" {
  description = "The AWS region to deploy the ECS cluster in the production environment"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The instance type for the ECS instances in the production environment"
  type        = string
  default     = "m5.large"
}

variable "desired_capacity" {
  description = "The desired number of instances in the ECS cluster for the production environment"
  type        = number
  default     = 5
}