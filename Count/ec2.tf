resource "aws_instance" "example"{
 count = 2
 #count = length(var.instances)
  ami = var.ami_id
  instance_type = var.instance_type
 
 tags = {
   Name = var.instances[count.index]
   project = "Roboshop"
 }
  

}