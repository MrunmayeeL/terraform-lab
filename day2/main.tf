terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "env_file" {
  content  = var.message
  filename = var.filename
}