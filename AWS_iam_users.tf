resource "aws_iam_user" "stdt001" {
  name = "stdt001"
  groups = [
    "stdts_all",
  ]
}
