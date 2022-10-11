resource "aws_organizations_account" "account" {
  name      = "my_new_account"
  email     = "hfm@123.com.br"
  role_name = "OrganizationAccountAccessRole"
}