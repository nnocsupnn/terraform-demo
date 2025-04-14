terraform {
  required_version = "~> 1.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.94.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "ap-southeast-1"
  alias  = "sea1"
}

provider "aws" {
  region = "ap-southeast-2"
  alias  = "sea2"
}

resource "aws_s3_bucket" "sea1" {
  bucket   = "some-random-bucket-name-asdzlckdszc"
  provider = aws.sea1
}

resource "aws_s3_bucket" "sea2" {
  bucket   = "some-random-bucket-name-asd2zlckdsz1c"
  provider = aws.sea2
  lifecycle {
    create_before_destroy = true
  }
}