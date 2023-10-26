variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-01eccbf80522b562b"
    us-east-2 = "ami-01f48e1e4b60cb973"
  }
}
variable "USER" {
  default = "ec2-user"
}