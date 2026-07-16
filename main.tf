
# 1. Create the base VPC
resource "aws_vpc" "main" {
  cidr_block       = var.cider_block
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {

    project = var.project
    environment = var.environment
  }

  }

  resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id # VPC association

  tags = local.igw_final_tags
}
