resource "aws_codebuild_project" "smoke_tests" {
  name          = local.name
  description   = "Runs smoke tests against the website."
  badge_enabled = true
  build_timeout = 20
  service_role  = var.code_build_iam_role_arn

  artifacts {
    type                = "S3"
    location            = var.bucket_id
    packaging           = "ZIP"
    encryption_disabled = true
  }

  cache {
    type = "LOCAL"

    modes = [
      "LOCAL_DOCKER_LAYER_CACHE",
      "LOCAL_SOURCE_CACHE"
    ]
  }

  environment {
    compute_type    = var.compute_type
    image           = var.cypress_docker_image
    privileged_mode = false
    type            = "LINUX_CONTAINER"

  dynamic environment_variable {
    for_each = var.cypress_environment
    content {
      name = environment_variable.key
      value = environment_variable.value
    }
  }

    environment_variable {
      name  = "S3_ARTIFACTS_BUCKET"
      value = var.bucket_id
    }
  }

  source {
    auth {
      type = "OAUTH"
    }
    buildspec       = var.cypress_buildspec
    git_clone_depth = 1
    location        = var.cypress_test_repository
    type            = "GITHUB"
  }

  logs_config {
    cloudwatch_logs {
      group_name  = aws_cloudwatch_log_group.codebuild.name
      stream_name = aws_cloudwatch_log_stream.codebuild.name
    }
  }
}