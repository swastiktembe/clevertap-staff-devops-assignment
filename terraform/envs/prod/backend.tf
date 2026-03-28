terraform {
  backend "s3" {
    bucket         = "terraform-state-prod"
    key            = "eks/prod.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
