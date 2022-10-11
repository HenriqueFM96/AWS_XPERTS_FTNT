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