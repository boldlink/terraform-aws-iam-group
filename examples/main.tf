provider "aws" {
  region = "eu-west-1"
}

locals {
  name        = "boldlink-test-group"
  group_users = ["testuser1"]
}

module "boldlink_group" {
  source                    = "boldlink/iam-group/aws"
  iam_group_name            = local.name
  iam_group_membership_name = local.name
  group_users               = local.group_users
  iam_group_policy_name     = local.name
  group_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
