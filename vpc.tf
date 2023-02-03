resource "aws_vpc" "this" {
  cidr_block = "10.17.0.0/16"
  tags       = merge(local.common_tags, { Name = "VPC-terraform-application-auto-scaling" })
}