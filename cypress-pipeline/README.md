## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_id | The id of the bucket | `string` | n/a | yes |
| code\_build\_iam\_role\_arn | The IAM Role arn | `string` | n/a | yes |
| code\_pipeline\_iam\_role\_arn | The IAM Role arn | `string` | n/a | yes |
| compute\_type | The compute type for CodeBuild | `string` | `"BUILD_GENERAL1_SMALL"` | no |
| cypress\_buildspec | The Cypress buildspec | `string` | `"buildspec.yml"` | no |
| cypress\_docker\_image | The Cypress docker image being used | `string` | `"whatishedoing/docker-aws-cypress"` | no |
| cypress\_environment | Cpress environment variables | `map` | n/a | yes |
| cypress\_test\_repository | The Cypress test repository | `string` | n/a | yes |
| environment | The environment name | `string` | n/a | yes |
| name | The name of this module | `string` | n/a | yes |
| region | aws region | `string` | n/a | yes |

## Outputs

No output.

