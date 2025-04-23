# Configure a remote backend for the staging environment using S3 and DynamoDB.
# Make sure the key is specific to staging.

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/state/staging"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

# Configure provider
provider "aws" {
  region = "us-west-2"
}