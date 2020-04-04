resource "aws_instance" "nginx-ec2-1" {
  ami           = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployer.key_name}"
  subnet_id = "${aws_subnet.pub1.id}"
  associate_public_ip_address = true
  security_groups = ["${aws_security_group.http-traffic.id}"]
  tags = {
    Name = "nginx-ec2-1"
  }
}

resource "aws_instance" "bastion" {
  ami           = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployer.key_name}"
  subnet_id = "${aws_subnet.pub1.id}"
  associate_public_ip_address = true
  security_groups = ["${aws_security_group.ssh-traffic.id}"]
  tags = {
    Name = "bastion-ec2"
  }
}