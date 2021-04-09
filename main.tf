resource "aws_codebuild_project" "this" {
  name          = var.name
  description   = var.description
  build_timeout = var.build_timeout
  service_role  = var.service_role

  artifacts {
    type = var.artifacts_type
  }

  source {
    type      = var.source_type
    buildspec = var.source_buildspec
  }

  environment {
    compute_type    = var.environment_compute_type
    image           = var.environment_image
    type            = var.environment_type
    privileged_mode = var.privileged_mode

    dynamic "environment_variable" {
      for_each = var.environment_variable
      content {
        name  = environment_variable.key
        value = environment_variable.value
      }
    }
  }

  dynamic "vpc_config" {
    for_each = var.vpc_id == null ? [] : [1]
    content {
      vpc_id             = var.vpc_id
      subnets            = var.subnets
      security_group_ids = var.security_group_ids
    }
  }

  tags = var.tags
}