variable "region" {
  type = string
  description = "aws region"
}

variable "bucket_id" {
  type = string
  description = "The id of the bucket"
}

variable "code_pipeline_iam_role_arn" {
  type = string
  description = "The IAM Role arn"
}

variable "code_build_iam_role_arn" {
  type = string
  description = "The IAM Role arn"
}

variable "compute_type" {
  type = string
  description = "The compute type for CodeBuild"
  default = "BUILD_GENERAL1_SMALL"
}

variable "cypress_docker_image" {
  type = string
  description = "The Cypress docker image being used"
  default = "whatishedoing/docker-aws-cypress"
}

variable "cypress_environment" {
  type = map
  description = "Cpress environment variables"
}

variable "cypress_test_repository"{
  type = string
  description = "The Cypress test repository"
}

variable "cypress_buildspec" {
  type = string
  description = "The Cypress buildspec"
  default = "buildspec.yml"
}

variable "name" {
  type = string
  description = "The name of this module"
}

variable "environment" {
  type = string
  description = "The environment name"
}