module "this" {
  source = "../../"

  name             = "titan-dev-test"
  artifacts_type   = "NO_ARTIFACTS"
  service_role     = module.iam-role.values.arn
  source_type      = "NO_SOURCE"
  source_buildspec = file("buildspec.yml")

  tags = {
    Project = "titan"
  }
}

# dependencies
module "iam-role" {
  source  = "bancoripleyperu/iam-role/aws"
  version = "0.0.3"

  name         = "titan-dev-test"
  aws_services = ["codebuild.amazonaws.com"]

  tags = {
    Project = "titan"
  }
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = module.iam-role.values.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
}