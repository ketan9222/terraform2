resource "aws_instance" "MyFirstInstnace" {
  ami           =  loopup(var.AMIS,var.AWS_REGION)
  instance_type = "t2.micro"
  tags = {
    name = "demoinstance"
  }
}