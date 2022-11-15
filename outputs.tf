output "bucket_object_url" {
  description = "S3 Bucket Object URL."
  value       = "https://${awscc_s3_bucket.main.domain_name}/${aws_s3_object.main.key}"
}

output "aws_s3_object" {
  description = "Exported Values of `aws_s3_object.main`."
  value       = aws_s3_object.main
}

output "awscc_s3_bucket" {
  description = "Exported Values of `awscc_s3_bucket.main`."
  value       = awscc_s3_bucket.main
}
