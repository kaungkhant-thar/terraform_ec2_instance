data "aws_vpc" "default" {
  default = true
}


data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}


module "test_instance" {
  source = "../"

  subnet_id = data.aws_subnets.default.id[0]
}
