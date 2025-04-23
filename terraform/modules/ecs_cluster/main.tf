# Create a Terraform module that provisions an ECS cluster with:
# - IAM roles
# - ECS cluster resource
# - Autoscaling group and capacity provider
# - CloudWatch logging
# - Security groups
# - Load balancer
# - Target group
# - ECS service with desired count
# - Outputs for ECS cluster name, service name, and load balancer DNS name
# - Example usage of the module

provider "aws" {
  region = var.region
}

resource "aws_iam_role" "ecs_task_execution_role" {
  name = "${var.project_name}-ecs-task-execution-role"
  assume_role_policy = data.aws_iam_policy_document.ecs_assume_role_policy.json
}

resource "aws_iam_policy_attachment" "ecs_task_execution_role_policy" {
  name       = "${var.project_name}-ecs-task-execution-role-policy"
  roles      = [aws_iam_role.ecs_task_execution_role.name]
  policy_arn = aws_iam_policy.ecs_task_execution_policy.arn
}