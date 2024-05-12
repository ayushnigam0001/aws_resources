data "aws_iam_users" "all_users" {
}

output "iam_user_arns" {
  value = data.aws_iam_users.all_users.ids
}