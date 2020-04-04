terraform {
  backend "s3" {
    bucket = "terraform-halim"
    key    = "~/terraform-demos/.terraform/terraform.tfstate"
    region = "us-east-2"
    shared_credentials_file = "/home/halim/terraform-demos/terraform/credentials"
    profile = "dev"
  }
}
