
# 1. Create the base VPC
resource "aws_vpc" "main" {
  cidr_block       = var.cider_block
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = merge(
    local.common,
    {
        Name = "${var.project}-${var.environment}"
    },
     var.vpc_tags
  )
    
  }
