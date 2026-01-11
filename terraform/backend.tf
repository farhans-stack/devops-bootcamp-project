terraform {
  backend "s3" {
    bucket = "devops-bootcamp-terraform-farhans"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
