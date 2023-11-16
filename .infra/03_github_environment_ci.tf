
//https://github.com/integrations/terraform-provider-github/issues/888 encrypted value?
resource "github_actions_secret" "github_token" {
  repository       = var.repo_name
  secret_name      = "PAT_BOT"
  plaintext_value  = jsondecode(data.aws_secretsmanager_secret_version.github_current.secret_string)["PAT_BOT"]
}

resource "github_actions_secret" "aws_runner_deploy_role" {
  repository       = var.repo_name
  secret_name      = "PUBLIC_RUNNER_ECR_ROLE"
  plaintext_value = jsondecode(data.aws_secretsmanager_secret_version.github_current.secret_string)["PUBLIC_RUNNER_ECR_ROLE"]
}