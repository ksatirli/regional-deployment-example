# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  # the AWS Region is set in the Terraform Cloud Workspace

  default_tags {
    tags = {
      Description = "Terraform-managed Resource."
    }
  }
}

# see https://registry.terraform.io/providers/hashicorp/awscc/latest/docs
provider "awscc" {
  # the AWS Region is set in the Terraform Cloud Workspace
}
