provider "aws" {
  region = "eu-north-1"
}

terraform {
  backend "s3" {
    bucket         = "sc-app-tftstates"
    key            = "nonprod-app-scania.tfstate"
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "nonprod-states"
  }
}

module "scania_app" {
  source             = "../scania_app_module"
  scania_app_version = var.scania_app_version
}