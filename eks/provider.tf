terraform {
  backend "s3" {
    bucket = "terraform-soat3"
    key    = "soat3-cluster"
    region = "us-east-1"
  }
}
