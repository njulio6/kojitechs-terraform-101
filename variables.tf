
variable "vpc_cidr" {
    description = "vpc cidr"
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_tag" {
    description = "vpc tag"
    type = string
    default = "kojitechsvpc"
}

variable "private_sub" {
    description = "private sub cidr"
    type = string
default = "10.0.1.0/24"
}

variable "private_sub_2" {
    description = "private subnet2 cidr"
    type = string
    default = "10.0.3.0/24"
}

variable "public_sub" {
    description = "public sub"
  type = string
  default = "10.0.2.0/24"
}

variable "public_sub_2" {
  description = "public sub2"
  type = string
  default = "10.0.4.0/24"
}

variable "priv1az" {
  description = "priv1az"
  type = string
  default = "us-east-1a"
}

variable "priv2az" {
  description = "privaz2"
  type = string
  default = "us-east-1a"
}

variable "pub1az" {
  description = "pub1az"
  type = string
  default = "us-east-1b"
}

variable "pub2az" {
  description = "pubaz2"
  type = string
  default = "us-east-1b"
}


