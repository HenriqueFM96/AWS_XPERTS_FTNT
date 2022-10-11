#AWS Account creation

resource "aws_organizations_account" "account" {
  name      = "my_new_account"
  email     = "hfm@123.com.br"
  parent_id = "ou-ebvx-vyvxwl6k"
  role_name = "OrganizationAccountAccessRole"
}