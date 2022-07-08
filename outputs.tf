output "iam_group_id" {
  value       = aws_iam_group.main.id
  description = "The group's ID."
}

output "iam_group_arn" {
  value       = aws_iam_group.main.arn
  description = "The ARN assigned by AWS for this group."
}

output "iam_group_name" {
  value       = aws_iam_group.main.name
  description = "The group's name."
}

output "iam_group_path" {
  value       = aws_iam_group.main.path
  description = "The path of the group in IAM."
}

output "iam_group_unique_id" {
  value       = aws_iam_group.main.unique_id
  description = "The unique ID assigned by AWS."
}

output "iam_group_policy_name" {
  value       = aws_iam_group_policy.main.*.name
  description = "The name of the policy."
}

output "iam_group_policy" {
  value       = aws_iam_group_policy.main.*.policy
  description = "The policy document attached to the group."
}

output "group_membership_name" {
  value       = aws_iam_group_membership.main.*.name
  description = "The name to identify the Group Membership"
}

output "group_membership_users" {
  value       = aws_iam_group_membership.main.*.users
  description = "list of IAM User names"
}
