resource "aws_iam_user" "stdt001" {
  name = "stdt001"
}

resource "aws_iam_user_login_profile" "stdt001-profile" {
    user = aws_iam_user.stdt001.name
    pgp_key = "keybase:stdt001"
}

output "password" {
  value = aws_iam_user_login_profile.stdt001-profile.encrypted_password
}

resource "aws_iam_user" "stdt002" {
  name = "stdt002"
}

resource "aws_iam_user" "stdt003" {
  name = "stdt003"
}