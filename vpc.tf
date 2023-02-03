resource "aws_vpc" "this" {
  cidr_block       = "10.17.0.0/16"
  tags = merge(local.common_tags, { Name = "VPC-terraform-application-auto-scaling" })
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags = merge(local.common_tags, { Name = "IGW-terraform-application-auto-scaling" })
}