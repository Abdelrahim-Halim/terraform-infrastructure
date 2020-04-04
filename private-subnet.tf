resource "aws_subnet" "private1" {
  vpc_id     = "${aws_vpc.example.id}"
  cidr_block = "${var.cidr_block_private_subnet_1}"
  availability_zone = "${var.availability_zone_private_subnet}"
  
  tags = {
    Name = "${var.private_subnet_tag_name_1}"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = "${aws_vpc.example.id}"
  cidr_block = "${var.cidr_block_private_subnet_2}"
  availability_zone = "${var.availability_zone_private_subnet}"
  
  tags = {
    Name = "${var.private_subnet_tag_name_2}"
  }
}