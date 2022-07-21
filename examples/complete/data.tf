data "aws_iam_policy" "billing" {
  arn = "arn:aws:iam::aws:policy/job-function/Billing"
}

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

  statement {
    sid = "AllowListActions"

    actions = [
      "iam:ListUsers",
      "iam:ListVirtualMFADevices"
    ]

    effect    = "Allow"
    resources = ["*"]
  }

  statement {
    sid = "AllowIndividualUserToListOnlyTheirOwnMFA"

    actions = [
      "iam:ListMFADevices",
    ]

    effect = "Allow"
    resources = [
      "arn:aws:iam::*:mfa/*",
      "arn:aws:iam::*:user/$${aws:username}"
    ]
  }

  statement {
    sid = "AllowManageOwnAccessKeys"

    actions = [
      "iam:CreateAccessKey",
      "iam:DeleteAccessKey",
      "iam:ListAccessKeys",
      "iam:UpdateAccessKey"
    ]

    effect    = "Allow"
    resources = ["arn:aws:iam::*:user/$${aws:username}"]
  }

  statement {
    sid = "AllowIndividualUserToManageTheirOwnMFA"

    actions = [
      "iam:CreateVirtualMFADevice",
      "iam:DeleteVirtualMFADevice",
      "iam:EnableMFADevice",
      "iam:ResyncMFADevice"
    ]

    effect = "Allow"
    resources = [
      "arn:aws:iam::*:mfa/$${aws:username}",
      "arn:aws:iam::*:user/$${aws:username}"
    ]
  }

  statement {
    sid = "AllowIndividualUserToDeactivateOnlyTheirOwnMFAOnlyWhenUsingMFA"

    actions = [
      "iam:DeactivateMFADevice",
    ]

    effect = "Allow"
    resources = [
      "arn:aws:iam::*:mfa/$${aws:username}",
      "arn:aws:iam::*:user/$${aws:username}"
    ]

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }
  }
}
