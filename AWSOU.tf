# AWS aws_organizations
data "aws_organizations_organization" "xperts" {}

# STUDENTS - OU
resource "aws_organizations_organizational_unit" "XPERTS-students" {
  name      = "STUDENTS"
  parent_id = data.aws_organizations_organization.xperts.roots.0.id
}

# ADMIN - OU
resource "aws_organizations_organizational_unit" "forti-admin" {
  name = "FORTI-ADMIN"
  parent_id = data.aws_organizations_organization.xperts.roots.0.id
}
