terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

provider "aws" {
    region = var.region
    access_key = "YASIA5L2MY7TO7K7K27GM"
    secret_key = "Y3pSKCqDzn4Ws/HwstqiIOO2G7WUm8MY7M9chFc80"
}

resource "aws_instance" "exampleInstance" {
    ami = var.ami
    instance_type = "t2.micro"

    tags = {
      Name = "Success"
    }
}