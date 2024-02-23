resource "aws_subnet" "anithasub" {
  vpc_id = var.vpc_id
  cidr_block = var.subnetcidr_block
}