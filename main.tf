provider "aws" {
  region     = "us-east-1"
  access_key = 
  secret_key = 
}

resource "aws_instance" "kyle-server" {
  ami           = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
  tags = {
    "Name" = "ubuntu"
  }
}
