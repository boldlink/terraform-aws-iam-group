locals {
  name = "boldlink-minimum-example"
}

module "iam_user" {
  source                  = "boldlink/iam-user/aws"
  name                    = "${local.name}-user"
  force_destroy           = true
  user_policy             = data.aws_iam_policy_document.default.json
  password_length         = 8
  password_reset_required = true

  tags = {
    Name        = local.name
    Environment = "dev"
  }
}

module "minimum_group" {
  source                    = "../../"
  iam_group_name            = local.name
  group_users               = [module.iam_user.user_name]
  iam_group_membership_name = local.name
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
