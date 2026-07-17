data "aws_ami" "devops" {
  most_recent      = true
  owners           = [""]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_instance" "terraform_instance" {
    instance_id = "i-0e9b37fcfbd0430bb"
}