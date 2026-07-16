resource "aws_instance" "example"{
  ami = var.ami_id
  instance_type = var.instance_type

  tags = {
    name = var.environment == "dev"? "t3.small" : "t3.micro"
  }
}


 
 