resource "aws_iam_user" "stdt001" {
  name = "stdt001"
}

resource "aws_iam_policy" "policy" {
  name        = "test-policy"
  description = "A test policy"
  groups      = "stdts-all"
}