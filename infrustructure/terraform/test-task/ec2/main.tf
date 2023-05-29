resource "aws_instance" "ec2_instance" {
  ami                    = "ami-09e1162c87f73958b"
  count                  = "1"
  instance_type          = "t3.micro"
  key_name               = "terraform.pem"
  subnet_id              = "subnet-09428834b0bf562e3"
  vpc_security_group_ids = ["sg-0fd5e835efd46ed29"]

  tags = {
    Name = "MyEC2Instance"
  }
}

