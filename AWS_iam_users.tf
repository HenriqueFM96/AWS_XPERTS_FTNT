resource "aws_iam_user" "stdt001" {
  name = "stdt001"
  password_reset_required = "Yes"
}

resource "aws_iam_user" "stdt002" {
  name = "stdt002"
}

resource "aws_iam_user" "stdt003" {
  name = "stdt003"
}