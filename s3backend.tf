terraform {
  backend "s3" {
    bucket = "s3backend11"
    region = "ap-south-1"
    key    = "terraform.tfstate"
  }
}
