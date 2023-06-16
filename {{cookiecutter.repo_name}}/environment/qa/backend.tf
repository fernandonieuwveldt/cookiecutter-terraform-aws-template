{% if cookiecutter.backend == "s3" %}
terraform {
  backend "s3" {
    bucket = "{{cookiecutter.s3_bucket_name_qa}}"
    region = "{{cookiecutter.aws_region}}"
    encrypt = true
  }
}
{% else %}
terraform {
  backend "local" {}
}
{% endif %}
