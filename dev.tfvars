#provider
region  = "us-east-1"
shared_credentials_file = "/home/halim/terraform-demos/terraform/credentials"
profile = "dev"


#vpc
vpc_tag_name = "vpc-dev"
cidr_block = "10.0.0.0/16"

#private_subnet
cidr_block_private_subnet_1 = "10.0.3.0/24"
cidr_block_private_subnet_2 = "10.0.4.0/24"
availability_zone_private_subnet = "us-east-1b"
private_subnet_tag_name_1 = "pv-subnet-1"
private_subnet_tag_name_2 = "pv-subnet-2"


#public_subnet
cidr_block_public_subnet_1 = "10.0.1.0/24"
cidr_block_public_subnet_2 = "10.0.2.0/24"
availability_zone_public_subnet = "us-east-1a"
public_subnet_tag_name_1 = "pub-subnet-1"
public_subnet_tag_name_2 = "pub-subnet-2"
