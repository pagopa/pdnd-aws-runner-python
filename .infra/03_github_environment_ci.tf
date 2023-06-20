
//https://github.com/integrations/terraform-provider-github/issues/888 encrypted value?
resource "github_actions_secret" "github_token" {
  repository       = var.repo_name
  secret_name      = "PAT_BOT"
  plaintext_value  = jsondecode(data.aws_secretsmanager_secret_version.github_current.secret_string)["PAT_BOT"]
}

resource "github_actions_secret" "ovpn_username" {
  repository       = var.repo_name
  secret_name      = "OVPN_USERNAME"
  plaintext_value = jsondecode(data.aws_secretsmanager_secret_version.github_current.secret_string)["OVPN_USERNAME"]
}

resource "github_actions_secret" "ovpn_client_key" {
  repository       = var.repo_name
  secret_name      = "OVPN_CLIENT_KEY"
  plaintext_value  = base64decode(jsondecode(data.aws_secretsmanager_secret_version.github_current.secret_string)["OVPN_CLIENT_KEY"])
}

resource "github_actions_secret" "ovpn_tls_auth_key" {
  repository       = var.repo_name
  secret_name      = "OVPN_TLS_AUTH_KEY"
  plaintext_value  = base64decode(jsondecode(data.aws_secretsmanager_secret_version.github_current.secret_string)["OVPN_TLS_AUTH_KEY"])
}

resource "github_actions_secret" "nexus_username" {
  repository       = var.repo_name
  secret_name      = "NEXUS_USERNAME"
  plaintext_value  = jsondecode(data.aws_secretsmanager_secret_version.nexus_credentials_current.secret_string)["username"]
}

resource "github_actions_secret" "nexus_password" {
  repository       = var.repo_name
  secret_name      = "NEXUS_PASSWORD"
  plaintext_value  = jsondecode(data.aws_secretsmanager_secret_version.nexus_credentials_current.secret_string)["password"]
}

resource "github_actions_variable" "image_registry_url" {
  repository       = var.repo_name
  variable_name    = "IMAGE_REGISTRY_URL"
  value            = var.image_registry_url
}