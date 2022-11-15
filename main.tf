# this string is used as part of the S3 Bucket Name, so we're omitting
# uppercase and special characters, resulting in an all-lowercase string
# see https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "suffix" {
  length  = 4
  lower   = true
  special = false
  upper   = false
}

# see https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/s3_bucket
resource "awscc_s3_bucket" "main" {
  bucket_name = "${var.bucket_prefix}-${random_string.suffix.id}"
}

locals {
  html_template_file = "${path.module}/${var.html_template_file}"

  # see https://developer.hashicorp.com/terraform/language/functions/templatefile
  html_object = templatefile(local.html_template_file, {
    region = var.bucket_prefix
  })
}

# upload rendered template to S3 Bucket
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object
resource "aws_s3_object" "main" {
  bucket = awscc_s3_bucket.main.bucket_name
  key    = basename(var.html_template_file)

  # use rendered template file as input content
  content      = local.html_object

  # set Content Type to avoid defaulting to binary presentation
  content_type = "text/html"

  etag = md5(local.html_object)
  acl  = "public-read"
}
