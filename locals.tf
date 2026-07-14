locals {
  common = {
    project = var.project
    environment = var.environment
    Terraform = "true"
  
  vpc_ec2_final_tags = merge(
                 local.common,
                {
                 Name = "${var.project}-${var.environment}"
                },
              var.vpc_tags
  )
  }
    
  
}