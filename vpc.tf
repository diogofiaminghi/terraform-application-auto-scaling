resource "aws_vpc" "this" {
  cidr_block = "10.17.0.0/16"
  tags       = merge(local.common_tags, { Name = "VPC-terraform-application-auto-scaling" })
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags   = merge(local.common_tags, { Name = "IGW-terraform-application-auto-scaling" })
}

resource "aws_subnet" "this" {
  for_each = {
    "pub_a" : ["10.17.1.0/24", "${var.aws_region}a", "Pub-Subnet-A-terraform-application-auto-scaling"]
    "pub_b" : ["10.17.2.0/24", "${var.aws_region}b", "Pub-Subnet-B-terraform-application-auto-scaling"]
    "pvt_a" : ["10.17.3.0/24", "${var.aws_region}a", "Pvt-Subnet-A-terraform-application-auto-scaling"]
    "pvt_b" : ["10.17.4.0/24", "${var.aws_region}b", "Pvt-Subnet-B-terraform-application-auto-scaling"]
  }

  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value[0]
  availability_zone = each.value[1]
  tags              = merge(local.common_tags, { Name = each.value[2] })
}