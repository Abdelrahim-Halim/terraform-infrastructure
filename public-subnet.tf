resource "aws_subnet" "pub1" {
  vpc_id     = "${aws_vpc.example.id}"
  cidr_block = "${var.cidr_block_public_subnet_1}"
  availability_zone = "${var.availability_zone_public_subnet}"
  
  tags = {
    Name = "${var.public_subnet_tag_name_1}"
  }
}

resource "aws_subnet" "pub2" {
  vpc_id     = "${aws_vpc.example.id}"
  cidr_block = "${var.cidr_block_public_subnet_2}"
  availability_zone = "${var.availability_zone_public_subnet}"
  
  tags = {
    Name = "${var.public_subnet_tag_name_2}"
  }
}