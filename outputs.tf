output "users" {
  value = ["${aws_iam_user.stdts-accounts.*.name}"]
}

output "passwords" {
  sensitive = true
  value = ["${aws_iam_user_login_profile.stdts_login.*.password}"]
}