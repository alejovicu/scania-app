resource "aws_instance" "scania_app" {

  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = "debug"
  tags = {
    Name = "scania-app"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install docker -y
              sudo systemctl start docker
              sudo docker run -d --name test -p ${var.scania_app_port}:8080 alejovicu/scania-app:${var.scania_app_version}
              EOF
}