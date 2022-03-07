variable "create_group" {
  type        = bool
  description = "Specify whether to create IAM group or not"
  default     = false
}

variable "iam_group_name" {
  type        = string
  description = "(Required) The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both `ADMINS` and `admins`."
}

variable "iam_group_path" {
  type        = string
  description = "(Optional, default `/`) Path in which to create the group."
  default     = "/"
}

variable "iam_group_membership_name" {
  type        = string
  description = "(Required) The name to identify the Group Membership"
}

variable "group_users" {
  type        = list(string)
  description = "(Required) A list of IAM User names to associate with the Group"
}

variable "iam_group_policy_name" {
  type        = string
  description = "(Optional) The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = null
}

variable "group_policy" {
  type        = string
  description = "(Required) The policy document. This is a JSON formatted string."
}

variable "group_policy_name_prefix" {
  type        = string
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with `name`."
  default     = null
}
