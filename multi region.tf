provider "aws" {
  alias = "primaryregion"
  region = "us-east-1"
}

provider "aws" {
  alias = "secondary"
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  provider = aws.primaryregion
}

resource "aws_instance" "example2" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  provider = aws.secondary
}
