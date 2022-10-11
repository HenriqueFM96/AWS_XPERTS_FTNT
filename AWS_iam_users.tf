resource "aws_iam_user" "stdtsCreation" {
  count = 5
  name = "stdt${count.index}"
}
