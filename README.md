# Regional Deployment Example

## Table of Contents

<!-- TOC -->
* [Regional Deployment Example](#regional-deployment-example)
  * [Table of Contents](#table-of-contents)
  * [Usage](#usage)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
  * [Author Information](#author-information)
  * [License](#license)
<!-- TOC -->

## Usage

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

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/regional-deployment-example/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
