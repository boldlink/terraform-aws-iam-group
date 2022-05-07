
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)

# AWS IAM Group Terraform module

## Description
This module creates an AWS IAM Group with group policy defining the permissions the group has, and the IAM user members of the group.

Example available [here](https://github.com/boldlink/terraform-aws-iam-group/tree/main/examples)

## Documentation

[AWS Identity and Access Management Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)

[Terraform provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group)
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_group_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_policy"></a> [group\_policy](#input\_group\_policy) | (Required) The policy document. This is a JSON formatted string. | `string` | n/a | yes |
| <a name="input_group_policy_name_prefix"></a> [group\_policy\_name\_prefix](#input\_group\_policy\_name\_prefix) | (Optional) Creates a unique name beginning with the specified prefix. Conflicts with `name`. | `string` | `null` | no |
| <a name="input_group_users"></a> [group\_users](#input\_group\_users) | (Required) A list of IAM User names to associate with the Group | `list(string)` | n/a | yes |
| <a name="input_iam_group_membership_name"></a> [iam\_group\_membership\_name](#input\_iam\_group\_membership\_name) | (Required) The name to identify the Group Membership | `string` | n/a | yes |
| <a name="input_iam_group_name"></a> [iam\_group\_name](#input\_iam\_group\_name) | (Required) The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both `ADMINS` and `admins`. | `string` | n/a | yes |
| <a name="input_iam_group_path"></a> [iam\_group\_path](#input\_iam\_group\_path) | (Optional, default `/`) Path in which to create the group. | `string` | `"/"` | no |
| <a name="input_iam_group_policy_name"></a> [iam\_group\_policy\_name](#input\_iam\_group\_policy\_name) | (Optional) The name of the policy. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_membership_name"></a> [group\_membership\_name](#output\_group\_membership\_name) | The name to identify the Group Membership |
| <a name="output_group_membership_users"></a> [group\_membership\_users](#output\_group\_membership\_users) | list of IAM User names |
| <a name="output_iam_group_arn"></a> [iam\_group\_arn](#output\_iam\_group\_arn) | The ARN assigned by AWS for this group. |
| <a name="output_iam_group_id"></a> [iam\_group\_id](#output\_iam\_group\_id) | The group's ID. |
| <a name="output_iam_group_name"></a> [iam\_group\_name](#output\_iam\_group\_name) | The group's name. |
| <a name="output_iam_group_path"></a> [iam\_group\_path](#output\_iam\_group\_path) | The path of the group in IAM. |
| <a name="output_iam_group_policy"></a> [iam\_group\_policy](#output\_iam\_group\_policy) | The policy document attached to the group. |
| <a name="output_iam_group_policy_name"></a> [iam\_group\_policy\_name](#output\_iam\_group\_policy\_name) | The name of the policy. |
| <a name="output_iam_group_unique_id"></a> [iam\_group\_unique\_id](#output\_iam\_group\_unique\_id) | The unique ID assigned by AWS. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
