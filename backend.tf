terraform {
  backend "s3" {
    bucket         = "jenkins-bucket-levent-28-01"
    key            = "state/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "dynamodb-terraform-lock"
    encrypt        = true
  }
}