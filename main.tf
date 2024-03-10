provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "ourfirst" {
  ami           = "ami-03bb6d83c60fc5f7c"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  tags = {
    Name  = "hello-docker"
  }
}
