# terraform-sso-okta-provisioning

This example shows how to automate the onboarding and offboarding of OKTA SSO users in HCP Terraform and Terraform Enterprise.


### Instructions for Use

Two Terraform providers are used [tfe](https://registry.terraform.io/providers/hashicorp/tfe/latest) and [okta](https://registry.terraform.io/providers/okta/okta/latest).

### Prerequisites

* [Configure OKTA for Terraform access](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/single-sign-on/okta)
* [Setup Authentication for HCP Terraform or Terraform Enterprise.](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs#authentication)
  
### Required Variables
`okta_orgname` This is the org name of your Okta account. Instructions for finding this can be found [here](https://registry.terraform.io/providers/okta/okta/latest/docs#environment-variables).

`okta_baseurl` This is the domain of your Okta account

`terraform_organization` The name of the organization to add users to

`terraform_owner` The email of the Terraform account owner

## OKTA credentials
OKTA_API_TOKEN


