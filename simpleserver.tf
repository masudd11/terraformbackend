provider "aws" {
  profile = "default"
}
resource "aws_key_pair" "testkey" {
  key_name   = "testkey"
  public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "nginxser" {
  ami                    = "ami-01216e7612243e0ef"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.testkey.key_name
  tags = {
    Name = "nginxser"
  }
}
