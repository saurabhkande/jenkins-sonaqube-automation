# output "jenkins-public_ip" {
#   value = aws_instance.jenkins-server.public_ip
# }

output "sonar-pub-ip" {
  value = aws_instance.sonar-server.public_ip 
}