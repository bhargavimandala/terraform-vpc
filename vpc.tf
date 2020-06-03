# creating vpc
  resource "aws_vpc" "vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags = {
    Name = "${var.global_product}.${var.global_environment}-vpc"
  }
}

