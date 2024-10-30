resource "aws_instance" "hsa_cicd_app" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [var.vpc_sg]

  tags = {
    Name = "hsa-cicd-app"
  }

  user_data = file("scripts/install-docker.sh")
}