# Create a Terraform module that provisions a VPC with:
# - Public and private subnets
# - Internet gateway
# - NAT gateway for private subnets
# - Best practices and tagging
# - Security groups for public and private subnets
# - Route tables for public and private subnets
# - Outputs for VPC ID, public and private subnet IDs
# - Example usage of the module

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-vpc"
    }
  )
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags   = merge(
    var.tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nat"
    }
  )
}