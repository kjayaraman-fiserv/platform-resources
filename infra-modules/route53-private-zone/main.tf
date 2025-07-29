
provider "aws" {
  region = var.aws_region
}

resource "aws_route53_zone" "private_zone" {
  name = "internal.example.com"
  vpc {
    vpc_id = var.vpc_id
  }
  comment = "Private zone for internal services"
  private_zone = true
}
