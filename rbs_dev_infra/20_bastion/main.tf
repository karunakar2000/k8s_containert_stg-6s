resource "aws_instance" "terraform" {
  ami                    = "ami-0dfc569a8686b93"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.tf_sg_all.id]

  tags = {
    Name      = "terraform"
    Terraform = "true"
  }
}
