# Define variables for CIDR blocks, availability zones, tags, etc.

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones to use for the subnets"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "example-project"
  }
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "example-project"
}