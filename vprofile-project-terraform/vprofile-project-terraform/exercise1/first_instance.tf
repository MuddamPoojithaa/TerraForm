provider "aws" {
  region = "us-east-1"
  #   access_key = ""
  #   secret_key = ""	
}

resource "aws_instance" "intro" {
  ami                    = "ami-01eccbf80522b562b"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-055aa582797c1660f"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}
