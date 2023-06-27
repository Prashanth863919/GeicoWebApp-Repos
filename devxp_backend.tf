resource "aws_s3_bucket" "terraform_backend_bucket" {
      bucket = "terraform-state-ubdkzlusjyivfp2fmjjyjipfnq09d1eevmcwurso996w2"
}

terraform {
  required_providers {
    aws =  {
    source = "hashicorp/aws"
    version = ">= 2.7.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

