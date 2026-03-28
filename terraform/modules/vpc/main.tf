resource "aws_vpc" "this" {
  cidr_block           = var.cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.public_subnets[count.index]
  availability_zone = var.azs[count.index]
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.private_subnets[count.index]
  availability_zone = var.azs[count.index]
}

resource "aws_subnet" "intra" {
  count = length(var.intra_subnets)

  vpc_id     = aws_vpc.this.id
  cidr_block = var.intra_subnets[count.index]
  availability_zone = var.azs[count.index]
}

resource "aws_flow_log" "this" {
  log_destination = var.s3_bucket_arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.this.id
}
