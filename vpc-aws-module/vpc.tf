module "main" {
    source = "git::https://github.com/sivareddy9017-bot/Terraform-aws-vpc.git?ref=main"
     project = "roboshop"
     environment = "dev"
}