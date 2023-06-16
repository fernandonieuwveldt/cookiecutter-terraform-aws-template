# Cookiecutter Terraform AWS

This is a [Cookiecutter](https://github.com/cookiecutter/cookiecutter) template to create a new AWS infrastructure project using Terraform. It provides a standardized structure, including pre-configured environments (development, QA, production) and GitHub Actions workflows.

## Features

- Organized folder structure for Terraform modules and environments.
- Pre-configured environments for development, QA, and production.
- GitHub Actions workflows for Terraform commands, ready to be used.
- Placeholder AWS keys variables for easy setup.

## Requirements

- [Cookiecutter Python package](http://cookiecutter.readthedocs.org/en/latest/installation.html): This can be installed with pip by `pip install cookiecutter`

## Usage

First, make sure you have Cookiecutter installed:

```bash
pip install cookiecutter
```

Then, generate a new Terraform AWS project:

```bash
cookiecutter gh:fernandodnieuwveldt/cookiecutter-terraform-aws
```

You will be prompted to enter values for several variables, such as the project name, repo name, AWS region, and more.

After answering the prompts, a new project will be created for you with the name you provided as repo_name.

Follow the instructions in the README.md file of the cookiecutter template