provider "aws" {
  region = "eu-north-1"
}

# TODO(alejandro.rosero): Store state in S3 and support locking with dynamodb

module "scania_app" {
  source             = "../scania_app_module"
  scania_app_version = var.scania_app_version
}