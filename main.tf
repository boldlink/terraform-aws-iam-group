resource "aws_iam_group" "main" {
  name = var.group_name
  path = var.group_path
}

resource "aws_iam_group_membership" "main" {
  count = var.group_users != [] && var.membership_name != null ? 1 : 0
  name  = var.membership_name
  users = var.group_users
  group = aws_iam_group.main.name
}

resource "aws_iam_group_policy" "main" {
  count       = var.group_policy != null ? 1 : 0
  name        = var.policy_name
  group       = aws_iam_group.main.name
  policy      = var.group_policy
  name_prefix = var.policy_name_prefix
}

### Purposely added to attach AWS Managed Policy ARNs to created group
resource "aws_iam_group_policy_attachment" "main" {
  count      = length(var.managed_policy_arns)
  group      = aws_iam_group.main.name
  policy_arn = var.managed_policy_arns[count.index]
}
