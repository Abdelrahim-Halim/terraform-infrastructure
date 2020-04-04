resource "aws_instance" "nodejs-ec2-2" {
  ami           = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployer.key_name}"
  subnet_id = "${aws_subnet.private2.id}"
  tags = {
    Name = "nodejs-ec2-2"
  }
}