
resource "aws_instance" "nginx_server" {
  ami                         = "ami-02d26659fd82cf299" # Ubuntu 22.04 LTS (Mumbai)
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx_sg.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.my_key.key_name

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt upgrade -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx
              EOF

  tags = {
    Name = "nginx_server"
  }
}