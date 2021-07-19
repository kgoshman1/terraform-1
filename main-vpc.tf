# provider "aws" {
#   region     = "us-east-1"
#   access_key = "AKIAZOAFFRZ7LEKGJO5H"
#   secret_key = "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"
# }

# DO NOT NEED TO RESTATE ABOVE

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.first-vpc.id
  #shortcut for ^
  #1.) Copy above resource and put "." between
  #2.) Add ".id" to the end

  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "prod-subnet"
  }
}