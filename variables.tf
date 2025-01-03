variable "okta_orgname" {
  description = "This is the org name of your Okta account"
  type        = string
}

variable "okta_baseurl" {
  description = "This is the domain of your Okta account"
  type        = string
}
variable "terraform_organization" {
  description = "The name of the organization to add users to"
  type        = string
}

variable "terraform_owner" {
  description = "The email of the Terraform account owner"
  type        = string
}