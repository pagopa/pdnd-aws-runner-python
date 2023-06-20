variable "repo_name" {
  type        = string
  description = "This repo name"
}
variable "repo_owner" {
  type        = string
  description = "github organization"
}
variable "github_secret_arn" {
  type        = string
  description = "AWS secret for github"
}

variable "nexus_secret_arn" {
  type        = string
  description = "AWS secret for nexus credentials"
}

variable "image_registry_url" {
  type        = string
  description = "docker registry url"
}