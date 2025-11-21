required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.7.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }

  archive = {
    source  = "hashicorp/archive"
    version = "~> 2.4.0"
  }

  local = {
    source  = "hashicorp/local"
    version = "~> 2.4.0"
  }
}

provider "aws" "configurations" {
  for_each = deployment.development.inputs.regions

  config {
    region = each.value

    assume_role_with_web_identity {
      role_arn           = deployment.development.inputs.role_arn
      web_identity_token = deployment.development.inputs.identity_token
    }

    default_tags {
      tags = deployment.development.inputs.default_tags
    }
  }
}

provider "random" "this" {}
provider "archive" "this" {}
provider "local" "this" {}
