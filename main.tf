provider "aws" {
  region = "ap-south-1"
}

# resource "aws_instance" "jenkins-server" {
#   ami           = var.ami-id[0]
#   instance_type = var.instance-type
#   key_name      = var.key-name[0]
#   security_groups  = [aws_security_group.def-sg-2.id]             
#   subnet_id     = var.subnet-id[0]
#   user_data = <<EOF
# #!/bin/bash
# sudo yum update -y
# sudo yum install -y java-11-amazon-corretto-devel.x86_64
# sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
# sudo yum upgrade
# sudo yum install -y jenkins
# sudo systemctl start jenkins
# sudo systemctl enable jenkins
# jenkins --version
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword
# EOF
#   tags = {
#     Name        = "Jenkins-Server"
#   }

# connection {
#     type        = "ssh"
#     host        = aws_instance.jenkins-server.public_ip
#     user        = "ec2-user"
#     private_key = file("C:/Users/Minfy/Desktop/sk4.pem")
#   }

# provisioner "remote-exec" {
#   inline = [
#     "sudo yum update -y",
#     "sudo yum install -y java-11-amazon-corretto-devel.x86_64",
#     "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
#     "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key",
#     "sudo yum upgrade",
#     "sudo yum install -y jenkins",
#     "sudo systemctl start jenkins",
#     "sudo systemctl enable jenkins",
#     "jenkins --version",
#     "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
#   ]
#  }
# }
