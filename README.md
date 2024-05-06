# Terraform AWS Project 2

## Overview

Welcome to the Terraform AWS project 2! This project demonstrates infrastructure as code (IaC) principles using Terraform to provision and manage resources on Amazon Web Services (AWS). The project focuses on creating a scalable and secure AWS environment for hosting applications.

## Project Structure

The project is organized into different directories, each containing Terraform configuration files for specific resource types:

- **config/**: Contains configuration files for Terraform backend, provider settings, and variable definitions.
  - **backend.tf**: Configures the Terraform backend to store state files in an S3 bucket and use DynamoDB for locking.
  - **provider.tf**: Defines the AWS provider and specifies the region.
  - **variables.tf**: Defines input variables used throughout the project.
  - **dev.tfvars**: Contains development environment-specific variable values.

- **networks/**: Contains Terraform configurations for networking resources.
  - **network.tf**: Defines a custom VPC, subnets, route tables, and internet gateway.

- **instances/**: Includes Terraform configurations for EC2 instances.
  - **instances.tf**: Creates EC2 instances with specified configurations, such as instance type, AMI, security groups, and user data scripts.

- **security/**: Contains Terraform configurations for security groups.
  - **security_groups.tf**: Defines security groups with inbound and outbound rules for network access control.

- **databases/**: Includes Terraform configurations for database resources.
  - **rds.tf**: Creates an RDS database instance with MySQL engine, storage allocation, and security group settings.
  - **redis_elastic_cache.tf**: Creates an Amazon ElastiCache cluster for Redis caching with specified configurations.

## Prerequisites

Before getting started, ensure you have the following prerequisites:

1. AWS Account: You need an AWS account with appropriate permissions to create resources.
2. Terraform Installed: Install Terraform on your local machine. You can download it from the [Terraform website](https://www.terraform.io/downloads.html).
3. AWS CLI Configured: Configure AWS CLI on your machine with credentials and default region.

## Getting Started

Follow these steps to deploy the infrastructure using Terraform:

1. Clone the repository to your local machine:

```bash
git clone https://github.com/AlaaGomaa178/Terraform-Project1-ITI.git
cd Terraform-AWS-Day2/
```

2. Initialize Terraform:

```bash
terraform init
```

3. Update Variables: Modify the values in `config/dev.tfvars` file to match your environment requirements.

4. Plan Infrastructure Changes: Execute the following command to plan the infrastructure changes:

```bash
terraform plan -var-file="config/dev.tfvars"
```

5. Apply Changes: Apply the planned changes to create the infrastructure:

```bash
terraform apply -var-file="config/dev.tfvars"
```

6. Verify Resources: Once the deployment is complete, verify the resources created in your AWS account.

## Contributing

Contributions to this project are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on GitHub.

## Author

This project is maintained by Alaa Mohamed Gomaa(https://github.com/AlaaGomaa178). Feel free to reach out with any questions or feedback.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

