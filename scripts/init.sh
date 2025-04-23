#!/bin/bash
# Initialization script for the project:
# - Check for required tools (git, docker, terraform)
# - Initialize Terraform backend
# - Create virtual environment (if Python)

command -v git >/dev/null || echo "❌ Git not installed"
command -v docker >/dev/null || echo "❌ Docker not installed"
command -v terraform >/dev/null || echo "❌ Terraform not installed"

echo "✅ Tools check complete"
cd terraform/environments/dev
terraform init
