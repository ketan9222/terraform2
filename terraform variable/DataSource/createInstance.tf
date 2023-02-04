resource "aws_key_pair" "ketan-key" {
  key_name   = "ketan-key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}


resource "aws_instance" "MyFirstInstnace" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name = aws_key_pair.ketan-key.key_name
  vpc_security_group_ids =[aws_security_group.allow_ssh.id]
  subnet_id = aws_subnet.my_public_subnet-2.id

  tags = {
    Name = "custom_instance"
  
}
