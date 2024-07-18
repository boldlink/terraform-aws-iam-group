variable "group_name" {
  type        = string
  description = "(Required) The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both `ADMINS` and `admins`."
}

variable "group_path" {
  type        = string
  description = "(Optional, default `/`) Path in which to create the group."
  default     = "/"
}

variable "membership_name" {
  type        = string
  description = "(Required) The name to identify the Group Membership"
  default     = null
}

variable "group_users" {
  type        = list(string)
  description = "(Required) A list of IAM User names to associate with the Group"
  default     = []
}

variable "policy_name" {
  type        = string
  description = "(Optional) The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = null
}

variable "group_policies" {
  type        = map(string)
  description = "(Required) The policy name and document, ex name = data.aws_iam_policy_document.example.json This is a JSON formatted string."
  default     = {}
}

variable "policy_name_prefix" {
  type        = string
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with `name`."
  default     = null
}

variable "managed_policy_arns" {
  type        = list(string)
  description = "(Optional) Set of exclusive AWS IAM managed policy ARNs to attach to the IAM UserGroup."
  default     = []
}
