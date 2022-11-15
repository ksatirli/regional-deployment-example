variable "bucket_prefix" {
  type        = string
  description = "Prefix of the S3 Bucket Name. Set via a Terraform Cloud Variable."
}

variable "html_template_file" {
  type        = string
  description = "HTML Template file to render."
  default     = "./templates/index.html"
}
