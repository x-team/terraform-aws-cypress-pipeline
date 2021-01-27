resource "aws_cloudwatch_log_group" "codebuild" {
  name = local.name
}

resource "aws_cloudwatch_log_stream" "codebuild" {
  name           = local.name
  log_group_name = aws_cloudwatch_log_group.codebuild.name
}