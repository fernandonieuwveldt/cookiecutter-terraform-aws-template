provider "aws" {
  region = "{{cookiecutter.aws_region}}"
  access_key = var.PROD_AWS_ACCESS_KEY_ID
  secret_key = var.PROD_AWS_SECRET_ACCESS_KEY
}