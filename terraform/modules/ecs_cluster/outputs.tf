# Define input variables for the ECS cluster module:
# - cluster name
# - instance type
# - desired capacity
# - VPC subnet IDs
# - IAM roles

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "example-cluster"
}

variable "region" {
  description = "The AWS region to deploy the ECS cluster in"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The instance type for the ECS instances"
  type        = string
  default     = "t2.micro"
}

variable "desired_capacity" {
  description = "The desired number of instances in the ECS cluster"
  type        = number
  default     = 2
}

variable "vpc_subnet_ids" {
  description = "List of VPC subnet IDs for the ECS instances"