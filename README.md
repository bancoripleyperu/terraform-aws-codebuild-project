## Usage

```hcl
module "this" {
  source  = "bancoripleyperu/codebuild-project/aws"
  version = "0.0.1"

  name             = "myCodeBuild"
  artifacts_type   = "NO_ARTIFACTS"
  service_role     = module.iam-role.values.arn
  source_type      = "NO_SOURCE"
  source_buildspec = file("buildspec.yml")
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.19 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.19 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codebuild_project.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_artifacts_type"></a> [artifacts\_type](#input\_artifacts\_type) | the artifacts type of the codebuild project | `string` | n/a | yes |
| <a name="input_build_timeout"></a> [build\_timeout](#input\_build\_timeout) | (Optional) The timeout of the codebuild project | `string` | `"15"` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description of the codebuild project | `string` | `null` | no |
| <a name="input_environment_compute_type"></a> [environment\_compute\_type](#input\_environment\_compute\_type) | (Optional) The environment compute type of the codebuild project | `string` | `"BUILD_GENERAL1_SMALL"` | no |
| <a name="input_environment_image"></a> [environment\_image](#input\_environment\_image) | (Optional) The environment image of the codebuild project | `string` | `"aws/codebuild/amazonlinux2-x86_64-standard:3.0"` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | (Optional) The environment type of the codebuild project | `string` | `"LINUX_CONTAINER"` | no |
| <a name="input_environment_variable"></a> [environment\_variable](#input\_environment\_variable) | (Optional) Environment variable | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the codebuild project | `string` | n/a | yes |
| <a name="input_privileged_mode"></a> [privileged\_mode](#input\_privileged\_mode) | (Optional) The privileged mode of the codebuild project | `string` | `false` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | (Optional) The security group ids of the codebuild project | `list(string)` | `null` | no |
| <a name="input_service_role"></a> [service\_role](#input\_service\_role) | the arn of the role of the codebuild project | `string` | n/a | yes |
| <a name="input_source_buildspec"></a> [source\_buildspec](#input\_source\_buildspec) | (Optional) The buildspec of the codebuild project | `string` | `null` | no |
| <a name="input_source_type"></a> [source\_type](#input\_source\_type) | the source type of the codebuild project | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | (Optional) The subnets id of the codebuild project | `list(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the role. | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | (Optional) The vpc id of the codebuild project | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_values"></a> [values](#output\_values) | All outputs |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Test

```sh
gem install bundler
bundle install --jobs 4 --retry 3
bundle exec kitchen test
```

## Doc

```sh
pre-commit run -a
```

## Autor
 
Module managed by [Banco Ripley Peru](https://ripley.com.pe)