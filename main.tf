terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-1"
  access_key = "AKIAV66CJVUUZF2CEJYE"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ded8326293d3201b"
  instance_type = "t2.micro"

  tags = {
    Name = "RaghavEc2"
  }
}
