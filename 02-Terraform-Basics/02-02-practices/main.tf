# Terraform Settings block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

# Resource Block
resource "aws_instance" "ecs_demo" {
  ami           = "ami-0993d3759749c153c"
  instance_type = "t2.micro"
}
