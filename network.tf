resource "aws_internet_gateway" "base_network-lab-igw" {
  vpc_id = aws_vpc.base_network-lab-vpc.id

  tags = {
    Name      = "base_network-in-aws"
    Terraform = "true"
  }
}

resource "aws_route_table" "base_network-lab-public-crt" {
  vpc_id = aws_vpc.base_network-lab-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.base_network-lab-igw.id
  }

  tags = {
    Name      = "base_network-in-aws"
    Terraform = "true"
  }
}

resource "aws_route_table_association" "subnet_association" {
  count = 3

  subnet_id      = aws_subnet.base_network-lab-pub[count.index].id
  route_table_id = aws_route_table.base_network-lab-public-crt.id

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    aws_subnet.base_network-lab-pub,
    aws_route_table.base_network-lab-public-crt,
  ]
}
