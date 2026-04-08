terraform {
  backend "s3" {
    bucket         = "robikov-terraform-state-bucket"
    key            = "roberthorvath-dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}