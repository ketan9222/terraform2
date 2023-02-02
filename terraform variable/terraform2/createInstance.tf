data "aws_availability_zones" "available" {}

data "aws_ami" "latest_ubuntu" {
  most_recent = true
  owner = ["099720109477"]

  filter {
    name = "name"
    values = "ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-sever-*"
  }
}


resource "aws_instance" "MyFirstInstnace" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  availability_zone = data.aws_availability_zones.available.names[1]


  tags = {
    Name = "custom_instance"
  }
  
}