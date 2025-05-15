terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

variable "aws_region" {
  default     = "ap-southeast-1"
  description = "Aws Region to connect"
}

provider "aws" {
  region = var.aws_region
}
