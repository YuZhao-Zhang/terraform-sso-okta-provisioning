# create a data source of all active users in the IdP
# For more filters check here: https://registry.terraform.io/providers/okta/okta/latest/docs/data-sources/users#arguments-reference
data "okta_users" "all_active" {
  # retrieves only active users
  search {
    name  = "status"
    value = "ACTIVE"
  }
  # could optionally filter by specific group
  # group_id = "group_id"
}

# Okta users found from datasource are synced to the desired TF org
resource "tfe_organization_membership" "sso_members" {
  #for_each = toset([for user in data.okta_users.all_active.users : user.email])

  for_each = toset([for user in data.okta_users.all_active.users : user.email if user.email != var.terraform_owner])

  organization = var.terraform_organization
  email = each.value
}