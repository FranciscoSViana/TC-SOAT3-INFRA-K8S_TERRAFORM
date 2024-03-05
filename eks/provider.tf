terraform {
  backend "s3" {
    bucket = "terraform-soat3"
    key    = "spat3-cluster"
    region = "us-east-1"
  }
}
