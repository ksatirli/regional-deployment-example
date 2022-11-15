<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| bucket_prefix | Prefix of the S3 Bucket Name. Set via a Terraform Cloud Variable. | `string` | yes |
| html_template_file | HTML Template file to render. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_s3_object | Exported Values of `aws_s3_object.main`. |
| awscc_s3_bucket | Exported Values of `awscc_s3_bucket.main`. |
| bucket_object_url | S3 Bucket Object URL. |
<!-- END_TF_DOCS -->