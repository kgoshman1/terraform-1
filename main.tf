provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZOAFFRZ7LEKGJO5H"
  secret_key = "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"
}

resource "aws_instance" "kyle-server" {
  ami           = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
  tags = {
    "Name" = "ubuntu"
  }
}