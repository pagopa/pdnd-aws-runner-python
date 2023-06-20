bucket         = "pdnd-tf-state"
key            = "prod/eu-central-1/etl-pipeline/pdnd-aws-runner-python/terraform.tfstate"
region         = "eu-central-1"
encrypt        = true
dynamodb_table = "lock-table"