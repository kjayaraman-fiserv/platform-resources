
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "kafka" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  user_data     = file("${path.module}/user_data.sh")
  tags = {
    Name = "kafka-lite-broker"
  }
}
