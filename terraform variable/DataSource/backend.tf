terraform {
  backend "s3" {
    bucket = "ketan32-bucket"
    key    = "developement/terraform_state"
    region = "us-east-1"
  }
}
