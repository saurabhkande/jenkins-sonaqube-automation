
resource "aws_instance" "sonar-server" {
  ami              = var.ami-id[1]
  instance_type    = var.instance-type
  key_name         = var.key-name[0]
  security_groups  = [aws_security_group.def-sg-2.id]             
  subnet_id        = var.subnet-id[0]
  user_data        = file("C:/Users/Minfy/Documents/jenkins-automation-terra/sonar-script.sh")
  tags = {
    Name        = "sonar-Server"
  }

# connection {
#     type        = "ssh"
#     host        = aws_instance.sonar-server.public_ip
#     user        = "ubuntu"
#     private_key = file("C:/Users/Minfy/Desktop/sk4.pem")
#   }

# provisioner "remote-exec" {
#   inline = [
#     "sudo apt-get update -y",
#     "sudo apt install docker.io -y",
#     "sudo systemctl start docker",
#     "sudo systemctl enable docker",
#     "sudo docker run -d --name sonarqube -p 9000:9000 sonarqube"
#   ]
#  }
}