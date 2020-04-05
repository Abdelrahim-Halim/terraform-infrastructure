#provider
variable "region" {
  type = "string"
}

#vpc
variable "vpc_tag_name" {
  type = "string"
}

variable "cidr_block" {
  type = "string"
}

#private_subnet
variable "cidr_block_private_subnet_1" {
  type = "string"
}

variable "cidr_block_private_subnet_2" {
  type = "string"
}

variable "availability_zone_private_subnet" {
  type = "string"
}

variable "private_subnet_tag_name_1" {
  type = "string"
}

variable "private_subnet_tag_name_2" {
  type = "string"
}


#public_subnet
variable "cidr_block_public_subnet_1" {
  type = "string"
}

variable "cidr_block_public_subnet_2" {
  type = "string"
}

variable "availability_zone_public_subnet" {
  type = "string"
}

variable "public_subnet_tag_name_1" {
  type = "string"
}

variable "public_subnet_tag_name_2" {
  type = "string"
}

