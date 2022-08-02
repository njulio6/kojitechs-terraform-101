
# data "aws_key_pair" "kojitechs_keypair" {
#   key_name           = "kojitechs_keypair"
# }

# # Create a VPC
# resource "aws_vpc" "kojitechsvpc" {
#   cidr_block           = var.vpc_cidr
#   enable_dns_hostnames = true
#   enable_dns_support   = true

#   tags = {
#     Name = var.vpc_tag
#   }
# }

# #private subnet
# resource "aws_subnet" "private_sub" {
#   vpc_id     = local.vpc_id
#   cidr_block = var.private_sub
#   availability_zone = local.az_priv

#   tags = {
#     Name = "private_sub"
#   }
# }

# #private subnet
# resource "aws_subnet" "private_sub_2" {
#   vpc_id     = local.vpc_id
#   cidr_block = var.private_sub_2
#   availability_zone = local.az_priv

#   tags = {
#     Name = "private_sub_2"
#   }
# }

# #public subnet
# resource "aws_subnet" "public_sub" {
#   vpc_id     = local.vpc_id
#   cidr_block = var.private_sub
#   availability_zone = local.az_pub
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "public_sub"
#   }
# }

# #public subnet
# resource "aws_subnet" "public_sub_2" {
#   vpc_id     = local.vpc_id
#   cidr_block = var.private_sub_2
#   availability_zone = local.az_pub
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "public_sub_2"
#   }
# }

# resource "aws_instance" "web" {
#   ami           = "ami-0cff7528ff583bf9a"
#   instance_type = "t2.micro"
#   subnet_id = aws_subnet.public_sub.id
#   key_name = data.aws_key_pair.kojitechs_keypair.key_name
#   tags = {
#     Name = "HelloWorld"
#   }
# }
# # check fire wall (security group [port 22 should be opened])