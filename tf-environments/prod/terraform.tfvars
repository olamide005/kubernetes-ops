terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket     = "kubernetes-ops-123-terraform-state"
      key        = "prod/${path_relative_to_include()}/terraform.tfstate"
      region     = "us-east-1"
      encrypt    = true
      # dynamodb_table = "terraform-locks"
    }
  }
}
