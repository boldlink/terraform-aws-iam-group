resource "aws_iam_group" "main" {
  name = var.iam_group_name
  path = var.iam_group_path
}

resource "aws_iam_group_membership" "main" {
  name  = var.iam_group_membership_name
  users = var.group_users
  group = aws_iam_group.main.name
}

resource "aws_iam_group_policy" "main" {
  name        = var.iam_group_policy_name
  group       = aws_iam_group.main.name
  policy      = var.group_policy
  name_prefix = var.group_policy_name_prefix
}
