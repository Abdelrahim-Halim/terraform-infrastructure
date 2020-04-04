resource "tls_private_key" "ssh-keygen" {
  algorithm   = "RSA"
  ecdsa_curve = "2048"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "${tls_private_key.ssh-keygen.public_key_openssh}"
}

resource "aws_secretsmanager_secret" "ssh-secret-private-key" {
  name = "ssh-secret-key"
}

resource "aws_secretsmanager_secret_version" "ec2-ssh-private-key" {
  secret_id     = "${aws_secretsmanager_secret.ssh-secret-private-key.id}"
  secret_string = "${tls_private_key.ssh-keygen.private_key_pem}"
}

resource "local_file" "ec2-private-key" {
    content     = "${tls_private_key.ssh-keygen.private_key_pem}"
    filename = "${path.module}/ec2.pem"
}
