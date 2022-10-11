#TF File to set groups availables in the Organization
#Students permissions
resource "aws_iam_group" "stdts_all" {
  name = "stdts_all"
}

resource "aws_iam_group_policy_attachment" "stdts-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = "aws:iam::024680062370:policy/cft_stdt"
}

## Setting up the admin group account with desired permissions
resource "aws_iam_group" "xperts-admins" {
  name = "xperts-admins"
}

resource "aws_iam_group_policy_attachment" "xperts-policies" {
  group      = aws_iam_group.xperts-admins.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
}