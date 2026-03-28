terraform {
  backend "s3" {
    bucket         = "clevertap-terraform-state-prod"
    key            = "eks/prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
