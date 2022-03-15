resource "aws_organizations_account" "pricingtool-arcablanca" {
  name      = "pricingtool-arcablanca"
  email     = "valentine.akem@nexgbits.com"
  role_name = "AWSControlTowerAdmin"

  # There is no AWS Organizations API for reading role_name
  lifecycle {
    ignore_changes = [role_name]
  }
}