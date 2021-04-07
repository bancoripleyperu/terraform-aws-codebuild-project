variable "name" {
  description = "The name of the codebuild project"
  type        = string
}

variable "description" {
  description = "(Optional) The description of the codebuild project"
  type        = string
  default     = null
}

variable "build_timeout" {
  description = "(Optional) The timeout of the codebuild project"
  type        = string
  default     = "15"
}

variable "service_role" {
  description = "the arn of the role of the codebuild project"
  type        = string
}

variable "artifacts_type" {
  description = "the artifacts type of the codebuild project"
  type        = string
}

variable "source_type" {
  description = "the source type of the codebuild project"
  type        = string
}

variable "source_buildspec" {
  description = "(Optional) The buildspec of the codebuild project"
  type        = string
  default     = null
}

variable "environment_type" {
  description = "(Optional) The environment type of the codebuild project"
  type        = string
  default     = "LINUX_CONTAINER"
}

variable "environment_compute_type" {
  description = "(Optional) The environment compute type of the codebuild project"
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
}

variable "environment_image" {
  description = "(Optional) The image of the codebuild project"
  type        = string
  default     = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
}

variable "privileged_mode" {
  description = "(Optional) The privileged mode of the codebuild project"
  type        = string
  default     = false
}

variable "environment_variable" {
  description = "(Optional) Environment variable"
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the role."
  type        = map(string)
  default     = {}
}