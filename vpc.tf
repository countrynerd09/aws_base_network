resource "aws_vpc" "base_network-lab-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name      = "base_network-lab"
    Terraform = "true"
  }
}
