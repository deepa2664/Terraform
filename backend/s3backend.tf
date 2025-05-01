terraform {
  backend "s3" {
    bucket         = "deepa-s3-demo-xyz" # change this
    key            = "deepa/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
