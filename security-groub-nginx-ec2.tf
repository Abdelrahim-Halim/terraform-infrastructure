resource "aws_security_group" "http-traffic" {
  name        = "http-traffic"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.example.id}"

  ingress {
    description = "TLS from VPC"
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "http-traffic"
  }
}