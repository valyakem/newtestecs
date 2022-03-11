variable "repo_name" {
  type    = string
  default = "testecr"
}

variable "branch_name" {
  type    = string
  default = "main"
}

variable "build_project" {
  type    = string
  default = "dev-build-repo"
}

variable "uri_repo" {
  type = string
  #The URI_REPO value is in a TF_VAR in my PC
}