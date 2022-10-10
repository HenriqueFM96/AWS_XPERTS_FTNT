# AWS aws_organizations
data "aws_organizations_organization" "xperts" {}

# DEV - OU
resource "aws_organizations_organizational_unit" "dev" {
  name      = "DEV"
  parent_id = data.aws_organizations_organization.xperts.roots.0.id
}

# TEST - OU
resource "aws_organizations_organizational_unit" "tst" {
  name = "TEST"
  parent_id = data.aws_organizations_organization.xperts.roots.0.id
}

# PROD - OU
resource "aws_organizations_organizational_unit" "prod" {
  name      = "PROD"
  parent_id = data.aws_organizations_organization.xperts.roots.0.id
}


