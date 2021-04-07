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
        name  = lookup(environment_variable.value, "name", null)
        value = lookup(environment_variable.value, "value", null)
        type  = lookup(environment_variable.value, "type", null)
      }
    }
  }

  tags = var.tags
}