module "minimum_group" {
  #checkov:skip=CKV2_AWS_21:Ensure that all IAM users are members of at least one IAM group
  #checkov:skip=CKV2_AWS_14:Ensure that IAM groups includes at least one IAM user
  source     = "../../"
  group_name = "boldlink-minimum-example-group"
}
