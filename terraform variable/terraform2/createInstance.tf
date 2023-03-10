data "aws_availability_zones" "available" {}

data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owner = ["099720109477 "] 

  filter {
    name = "name"
    values = "ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-sever-*"
  }
  
  filter {
    name = "virtulization-type"
    values = ["hvm"]
  }
}


resource "aws_instance" "MyFirstInstnace" {
  ami           = data.aws_ami.latest-ubuntu.id
  instance_type = "t2.micro"
  availability_zone = data.aws_availability_zones.available.names[1]


  tags = {
    Name = "custom_instance"
  }
  
}