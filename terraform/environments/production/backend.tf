# Configure the Terraform remote state backend for production using secure S3 and DynamoDB.
# Use encryption and locking to protect critical infrastructure.

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/state/production"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

# Configure provider
provider "aws" {
  region = "us-west-2"
}