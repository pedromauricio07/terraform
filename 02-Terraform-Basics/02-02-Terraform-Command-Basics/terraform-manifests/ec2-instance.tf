# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-west-2"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-027d95b1c717e8c5d" # Amazon Linux in eu-west-2, update as per your region
  instance_type = "t2.micro"
}
