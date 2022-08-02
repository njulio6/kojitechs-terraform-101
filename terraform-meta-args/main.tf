
locals {
  vpc_id = aws_vpc.kojitechsvpc.id
}

# Create a VPC
# resource.localname.id
resource "aws_vpc" "kojitechsvpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "kojitechsvpc"
  }
}

#private subnet
resource "aws_subnet" "private_sub" {
  vpc_id     = local.vpc_id # calling tocal
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private_sub"
  }
}

#public subnet
resource "aws_subnet" "public_sub" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_sub"
  }
}

#public subnet
resource "aws_subnet" "public_sub_2" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_sub_2"
  }
}

#private subnet
resource "aws_subnet" "private_sub_2" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private_sub_2"
  }
}

#public subnet
resource "aws_subnet" "database_sub" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.51.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "database_sub"
  }
}

#public subnet
resource "aws_subnet" "database_sub_2" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.53.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "database_sub_2"
  }
}
