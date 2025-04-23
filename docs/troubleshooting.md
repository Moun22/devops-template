<!-- Create a troubleshooting guide for common DevOps issues:
- Terraform apply fails
- CI/CD pipeline broken
- App container won’t start
- High CPU or memory usage -->

# Troubleshooting Guide

This folder contains a troubleshooting guide for common DevOps issues. This guide provides step-by-step instructions to help you diagnose and resolve issues that may arise in the system.

## Common Issues

### Terraform Apply Fails
1. Check the error message in the terminal.
2. Ensure that the Terraform state file is not locked.
3. Validate the Terraform configuration files using `terraform validate`.
4. Run `terraform plan` to see what changes will be applied.
5. If necessary, manually unlock the state file using `terraform force-unlock`.

### CI/CD Pipeline Broken
1. Check the pipeline logs for error messages.
2. Ensure that all required environment variables are set correctly.
3. Verify that all dependencies are installed and up to date.
4. Check for any recent changes in the codebase that may have caused the issue.
5. If necessary, roll back to a previous commit and re-run the pipeline.

### App Container Won't Start
1. Check the container logs using `docker logs <container_id>`.
2. Ensure that the container image is built correctly and available in the registry.
3. Verify that all required environment variables are set correctly.
4. Check for any port conflicts on the host machine.
5. If necessary, rebuild the container image and restart it.

### High CPU or Memory Usage
1. Check the resource usage of running containers using `docker stats`.
2. Identify any containers that are consuming excessive resources.
3. Optimize the application code to reduce resource consumption.
4. Consider scaling up or out if necessary (e.g., increasing instance size or adding more instances).
5. Monitor resource usage over time to identify patterns or spikes.

Feel free to add any additional troubleshooting steps or common issues that may arise in your specific environment.