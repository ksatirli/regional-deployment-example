terraform {
  # see https://developer.hashicorp.com/terraform/language/settings/terraform-cloud
  cloud {
    # The Organization Name is set as an environment variable in Terraform Cloud
    # see https://developer.hashicorp.com/terraform/cli/cloud/settings#organization

    workspaces {
      # The Workspace Name is set as an environment variable in Terraform Cloud
      # see https://developer.hashicorp.com/terraform/cli/cloud/settings#name
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/aws/4.39.0
    aws = {
      source  = "hashicorp/aws"
      version = "4.39.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/awscc/0.38.0
    awscc = {
      source  = "hashicorp/awscc"
      version = "0.38.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/random/latest/docs
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-a-required-terraform-version
  required_version = ">= 1.3.0"
}
