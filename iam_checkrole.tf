data "aws_iam_users" "all_users" {
}

output "iam_users" {
  value = data.aws_iam_users.all_users.users[*].name
}