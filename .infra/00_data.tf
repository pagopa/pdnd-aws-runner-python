data "aws_secretsmanager_secret" "github_secret" {
  arn = var.github_secret_arn
}

data "aws_secretsmanager_secret_version" "github_current" {
  secret_id = "${data.aws_secretsmanager_secret.github_secret.id}"
}

data "github_actions_public_key" "gh_actions_public_key" {
  repository = var.repo_name
}