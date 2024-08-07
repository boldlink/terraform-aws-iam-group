# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
- feat: constraints in iam policy
- fix: CKV_AWS_355 "Ensure no IAM policies documents allow "*" as a statement's resource for restrictable actions"
- fix: CKV2_AWS_21 #Ensure that all IAM users are members of at least one IAM group
- fix: CKV2_AWS_14 #Ensure that IAM groups includes at least one IAM user

## [1.1.0] - 2024-07-18
- feat: adding the code to support multiple iam group policies attachement.
- feat: remove the iam group policy name prefix.

## [1.0.5] - 2022-08-16
- fix: added CKV_TF_1 exception in complete example.

## [1.0.4] - 2022-07-21
### Changes
- feat: Introduced feature for adding AWS Managed Policy ARNs

## [1.0.3] - 2022-06-30
### Changes
- Added the `.github/workflow` folder (not supposed to run gitcommit)
- Re-factored examples (`minimum`, `complete`)
- Added `CHANGELOG.md`
- Added `CODEOWNERS`
- Added `versions.tf`, which is important for pre-commit checks
- Added `Makefile` for examples automation
- Added `.gitignore` file

## [1.0.2] - 2022-03-09
### Changes
- Module source correction
- Corrected typos

## [1.0.1] - 2022-03-09
### Changes
- Removed provider lock
- Cleaned more unnecessary files

## [1.0.0] - 2022-03-04
### Changes
- Initial commit
- Cleaned unnecessary files

[Unreleased]: https://github.com/boldlink/terraform-aws-iam-group/compare/1.1.0...HEAD
[1.0.0]: https://github.com/boldlink/terraform-aws-iam-group/releases/tag/1.0.5
[1.0.0]: https://github.com/boldlink/terraform-aws-iam-group/releases/tag/1.0.0
[1.0.1]: https://github.com/boldlink/terraform-aws-iam-group/releases/tag/1.0.1
[1.0.2]: https://github.com/boldlink/terraform-aws-iam-group/releases/tag/1.0.2
[1.0.3]: https://github.com/boldlink/terraform-aws-iam-group/releases/tag/1.0.3
[1.0.4]: https://github.com/boldlink/terraform-aws-iam-group/releases/tag/1.0.4
[1.0.5]: https://github.com/boldlink/terraform-aws-iam-group/releases/tag/1.0.5
