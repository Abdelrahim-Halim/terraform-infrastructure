resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.example.id}"

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = "${aws_vpc.example.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "public-rt"
  }
}