# AWS Infrastructure using Terraform

Welcome to the AWS Infrastructure using Terraform repository! This repository contains Terraform code to provision and manage AWS infrastructure components. Below is a comprehensive guide to understanding the structure of this repository and how to use it effectively.

---

## Table of Contents

1. [Folder Structure](#folder-structure)
2. [Terraform Files](#terraform-files)
   - [Network](#network)
   - [Other Infrastructure Components](#other-infrastructure-components)
3. [How to Use](#how-to-use)
4. [Notes](#notes)
5. [Contributors](#contributors)

---

## Folder Structure

Here's an overview of the folder structure and the purpose of each directory and file:

- **network/**
  - igw.tf: Creates an Internet Gateway for the VPC.
  - natgw.tf: Sets up a NAT Gateway and associates it with an Elastic IP.
  - outputs.tf: Defines outputs for subnets, VPC ID, and CIDR block.
  - rt-route-rtassociate.tf: Configures route tables and associations for subnets.
  - sn.tf: Manages AWS Subnets within the VPC.
  - variables.tf: Contains variable definitions for network configurations.
  - vpc.tf: Creates the Virtual Private Cloud (VPC) in AWS.

- backend.tf: Configures Terraform backend to store state in S3 and use DynamoDB for locking.
- dev.tfvars: Development environment variables such as VPC CIDR, region, and SES email receiver.
- instances.tf: Defines AWS EC2 instances (Bastion and Application servers).
- keys.tf: Generates TLS private key and AWS key pair.
- lab.txt: A text file unrelated to Terraform.
- lambda.tf: Sets up an AWS Lambda function.
- lambda_code.py: Python code for the Lambda function.
- network.tf: Utilizes the network module to create networking components.
- prod.tfvars: Production environment variables similar to dev.tfvars.
- provider.tf: Specifies the AWS provider and region.
- rds.tf: Creates an AWS RDS instance (database).
- redis_elastic_cache.tf: Configures an AWS Redis ElastiCache cluster.
- role.tf: Defines an AWS IAM role and policy for Lambda function execution.
- security_groups.tf: Establishes AWS security groups for SSH access.
- ses.tf: Configures AWS SES for email sending.
- terraform.tfvars: Central Terraform variables file used across the project.
- variables.tf: General variables used throughout the Terraform configurations.

---

## Terraform Files

### Network

- **igw.tf**: Creates an AWS Internet Gateway for the VPC to allow outbound internet access.
- **natgw.tf**: Sets up an AWS NAT Gateway to enable instances in private subnets to access the internet.
- **outputs.tf**: Defines outputs for resources like VPC ID, subnets, and CIDR block.
- **rt-route-rtassociate.tf**: Configures route tables and associations for routing traffic within the VPC and to the internet.
- **sn.tf**: Defines AWS Subnets based on provided details like CIDR blocks and availability zones.
- **variables.tf**: Contains variable declarations used in network-related configurations.
- **vpc.tf**: Creates the AWS Virtual Private Cloud (VPC) with specified CIDR block.

### Other Infrastructure Components

- **backend.tf**: Specifies the Terraform backend to store state and locking information in AWS S3 and DynamoDB.
- **dev.tfvars** and **prod.tfvars**: Environment-specific variable files containing configurations for different environments (e.g., development and production).
- **instances.tf**: Manages AWS EC2 instances, including Bastion and Application servers.
- **keys.tf**: Generates TLS private key and AWS key pair for secure communication.
- **lab.txt**: A text file that might contain additional notes or instructions.
- **lambda.tf** and **lambda_code.py**: Sets up an AWS Lambda function and includes the Python code for its execution.
- **network.tf**: Utilizes the network module to create networking components like VPC, subnets, and routing tables.
- **provider.tf**: Specifies the AWS provider details such as region and credentials.
- **rds.tf**: Creates an AWS RDS database instance with specified configurations.
- **redis_elastic_cache.tf**: Configures an AWS Redis ElastiCache cluster for caching purposes.
- **role.tf**: Defines an AWS IAM role, policy, and attachment for secure resource access.
- **security_groups.tf**: Establishes AWS security groups to control inbound and outbound traffic.
- **ses.tf**: Sets up AWS SES (Simple Email Service) for sending emails.
- **terraform.tfvars**: Central file containing Terraform variables used across the project.
- **variables.tf**: Declares general variables used throughout the Terraform configurations.

---

## How to Use

To use this Terraform project:

1. Clone this repository to your local machine.
2. Update the `terraform.tfvars`, `dev.tfvars`, or `prod.tfvars` files with your desired configurations.
3. Run `terraform init` in your terminal to initialize Terraform and download necessary providers.
4. Run `terraform plan` to see the execution plan and check for any potential issues.
5. If the plan looks good, apply the changes using `terraform apply`.
6. Confirm the changes by typing `yes` when prompted.

---

## Notes

- Ensure you have valid AWS credentials configured on your system or environment.
- Always review the Terraform plan (`terraform plan`) before applying changes to avoid unintended consequences.
- Use environment-specific variable files (`dev.tfvars` and `prod.tfvars`) to manage configuration variations between environments.
- Keep sensitive information such as passwords and access keys secure and avoid committing them to version control.

---

## Contributors

- [Alaa Mohamed Gomaa](https://github.com/AlaaGomaa178)

Feel free to contribute, report issues, or suggest improvements to this project!

---
