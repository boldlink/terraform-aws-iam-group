data "aws_iam_policy_document" "default" {

  statement {
    sid = "AllowChangeOwnPassword"

    actions = [
      "iam:ChangePassword",
    ]

    effect    = "Allow"
    resources = ["arn:aws:iam::*:user/$${aws:username}"]
  }

  statement {
    sid = "AllowChangeOwnPasswordPolicy"

    actions = [
      "iam:GetAccountPasswordPolicy",
    ]

    effect    = "Allow"
    resources = ["*"]
  }
}
