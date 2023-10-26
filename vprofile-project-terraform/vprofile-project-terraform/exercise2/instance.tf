resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "new-dove"
  vpc_security_group_ids = ["sg-055aa582797c1660f"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}
