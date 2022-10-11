output "users" {
  value = aws_iam_user.stdts-accounts.name
}

output "passwords" {
  sensitive = true
  value = var.secret_password
}