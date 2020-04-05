resource "tls_private_key" "ssh-keygen-new" {
  algorithm   = "RSA"
  ecdsa_curve = "2048"
}

resource "aws_key_pair" "deployer-new" {
  key_name   = "deployer-key-new"
  public_key = "${tls_private_key.ssh-keygen-new.public_key_openssh}"
}

resource "aws_secretsmanager_secret" "ssh-secret-private-key-new" {
  name = "ssh-secret-key-new"
}

resource "aws_secretsmanager_secret_version" "ec2-ssh-private-key-new" {
  secret_id     = "${aws_secretsmanager_secret.ssh-secret-private-key-new.id}"
  secret_string = "${tls_private_key.ssh-keygen-new.private_key_pem}"
}

resource "local_file" "ec2-private-key-new" {
    content     = "${tls_private_key.ssh-keygen-new.private_key_pem}"
    filename = "${path.module}/ec2.pem"
}
