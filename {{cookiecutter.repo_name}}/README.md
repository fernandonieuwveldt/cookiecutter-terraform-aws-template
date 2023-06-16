# Terraform AWS Infrastructure with Cookiecutter

This repository contains a template for creating a new AWS infrastructure project with Terraform using Cookiecutter. It includes pre-configured environments (development, QA, production) and GitHub Actions workflows.

## How to Use this Repository

1. First, you need to install Cookiecutter if you haven't already. It can be installed using pip:

    ```bash
    pip install cookiecutter
    ```

2. Generate a new project using the template from this repository:

    ```bash
    cookiecutter https://github.com/user/cookiecutter-terraform-aws.git
    ```

3. Answer the prompts with your own desired options.

4. Your new project will be generated in a new directory with the name you provided as `repo_name`.

## Adding AWS Keys
The AWS credentials used by Terraform to deploy infrastructure need to be securely stored. We will use GitHub Secrets to store our AWS Access Key and Secret Access Key for each environment (development, QA, production).

1. In your GitHub repository, navigate to **Settings** > **Secrets** > **Actions**.
2. Click on **New repository secret**.
3. For the Development environment, enter `DEV_AWS_ACCESS_KEY_ID` as the name and your actual AWS Access Key ID for the development account as the value.
4. Repeat the process and create a new secret named `DEV_AWS_SECRET_ACCESS_KEY` with your actual AWS Secret Access Key for the development account as the value.
5. Repeat steps 3 and 4 for the QA and Production environments, replacing `DEV` with `QA` and `PROD`, respectively.

## IAM Policy for S3 Backend

If you're using S3 as the backend for Terraform, the following is a minimal IAM policy needed for the operations:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket"
      ],
      "Resource": ["arn:aws:s3:::bucket-name"]
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ],
      "Resource": ["arn:aws:s3:::bucket-name/path/to/my/key"]
    }
  ]
}
```

Replace bucket-name and path/to/my/key with your actual S3 bucket name and key path.

## Running Terraform
After setting up your AWS keys, you can navigate to the environment directories and run Terraform commands as you normally would:

```bash
cd development
terraform init
terraform plan
terraform apply
```

## GitHub Actions
This repository comes with two pre-configured GitHub Actions workflows:

`terraform_all_environments.yml`: This workflow runs Terraform commands (init, validate, plan) on all environments. It can be manually triggered from the GitHub web interface.
`terraform_single_environment.yml`: This workflow runs Terraform commands on a single, specified environment. It can be manually triggered from the GitHub web interface, with an input for the environment.


You can manually trigger these workflows by navigating to the Actions tab of your GitHub repository, selecting the workflow, and clicking "Run workflow."

Remember to add your AWS keys as secrets in your GitHub repository settings for the workflows to be able to access your AWS account. The secrets should be named `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
