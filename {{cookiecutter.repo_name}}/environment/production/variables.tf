variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "{{cookiecutter.aws_region}}"
}

variable "PROD_AWS_ACCESS_KEY_ID" {
  description = "Access Key for AWS Account"
}

variable "PROD_AWS_SECRET_ACCESS_KEY" {
  description = "Secret Key for AWS Account"
}
