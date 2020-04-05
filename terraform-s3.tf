terraform {
  backend "s3" {
    bucket = "terraform-halim"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
