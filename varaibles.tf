variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "ses_email_receiver" {
  type        = string
  description = "SES email receiver"
}

variable "ses_email_sender" {
  type        = string
  description = "SES email sender"
}

variable "common_resource_name" {
  type        = string
  default     = "Cloud_PD44"
  description = "Common resource name prefix"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "machine_details" {
  type = object({
    type      = string,
    public_ip = bool
  })
  description = "Details of the machine to be deployed"
}

variable "subnets_details" {
  type = list(object({
    name = string,
    cidr = string,
    type = string,
    az   = string
  }))
  description = "Details of subnets"
}

variable "db_username" {
  type        = string
  description = "RDS database username"
  sensitive   = true
}

variable "db_password" {
  type        = string
  description = "RDS database password"
  sensitive   = true
}
