resource "aws_iam_user" "stdt001" {
  name = "stdt001"
}

resource "aws_iam_user" "stdt002" {
  name = "stdt002"
}

resource "aws_iam_user" "stdt003" {
  name = "stdt003"
}

resource "aws_iam_user" "stdts-accounts" {
  count = 5
  name = "stdt${count.index}"
}

resource "aws_iam_user_login_profile" "stdts_login" {
  count = 5
  user = "stdt${count.index}"
  password_length = 10 
  password_reset_required = true
}
