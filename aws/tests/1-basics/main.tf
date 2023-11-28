terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "quique"
  secret_key = "quique"
}

resource "aws_instance" "example" {
  ami           = "ami-0fc5d935ebf8bc3bc" # Ubuntu 22.04 LTS // us-east-1
  instance_type = "t2.micro"
  # subnet_id     = "subnet-024aa4fcf235ba614"
}