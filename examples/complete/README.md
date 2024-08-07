[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://github.com/boldlink/terraform-aws-iam-group/blob/main/LICENSE)
[![Latest Release](https://img.shields.io/github/release/boldlink/terraform-aws-iam-group.svg)](https://github.com/boldlink/terraform-aws-iam-group/releases/latest)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/update.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/release.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/pr-labeler.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/module-examples-tests.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/checkov.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/auto-merge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-group/actions/workflows/auto-badge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-group/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# Terraform module example of complete and most common configuration


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.58.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_group"></a> [iam\_group](#module\_iam\_group) | ../../ | n/a |
| <a name="module_iam_user"></a> [iam\_user](#module\_iam\_user) | boldlink/iam-user/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.billing](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_document.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Third party software
This repository uses third party software:
* [pre-commit](https://pre-commit.com/) - Used to help ensure code and documentation consistency
  * Install with `brew install pre-commit`
  * Manually use with `pre-commit run`
* [terraform 0.14.11](https://releases.hashicorp.com/terraform/0.14.11/) For backwards compatibility we are using version 0.14.11 for testing making this the min version tested and without issues with terraform-docs.
* [terraform-docs](https://github.com/segmentio/terraform-docs) - Used to generate the [Inputs](#Inputs) and [Outputs](#Outputs) sections
  * Install with `brew install terraform-docs`
  * Manually use via pre-commit
* [tflint](https://github.com/terraform-linters/tflint) - Used to lint the Terraform code
  * Install with `brew install tflint`
  * Manually use via pre-commit

#### BOLDLink-SIG 2022
