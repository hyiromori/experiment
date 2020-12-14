terraform {
  required_version = ">=0.12.0"

  backend "s3" {
    bucket = "hyiromori"
    region = "ap-northeast-1"
    key    = "terraform/example-cognito/terraform.tfstate"
  }
}

provider "aws" {
  version = "~>2.18.0"
  region  = "ap-northeast-1"
}

data "aws_caller_identity" "current" {}

locals {
  aws_account_id = data.aws_caller_identity.current.account_id
}
