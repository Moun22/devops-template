# Configure remote backend using S3 and DynamoDB for state locking

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/state"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

# Configure provider
provider "aws" {
  region = "us-west-2"
}