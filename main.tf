terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.38.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "web-server" {
  ami           = "ami-01dd271720c1ba44f"
  instance_type = "t2.micro"

  tags = {
    Name = "Web_server"
  }
}
