#AWS Account creation

resource "aws_organizations_account" "UsersAccount" {
  count = 3
  name      = "newStudent${count.index}"
  email     = "hfm${count.index}@123.com.br"
  parent_id = "ou-ebvx"
  role_name = "OrganizationAccountAccessRole"
}

resource "aws_organizations_account" "account" {
  name      = "stdt01"
  email     = "hfm@123.com.br"
  parent_id = "ou-ebvx-vyvxwl6k"
  role_name = "OrganizationAccountAccessRole"
}

resource "aws_organizations_account" "account" {
  name      = "stdt02"
  email     = "student1@fortixperts.com"
  parent_id = "ou-ebvx-vyvxwl6k"
  role_name = "OrganizationAccountAccessRole"
}

#student1@fortixperts.com - student160@fortixperts.com
