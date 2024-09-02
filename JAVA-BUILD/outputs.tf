output "ami-id" {
  value = data.aws_ami.ubuntu.id
}
output "instanceID"{
  value = aws_instance.docker.id
}
output "PublicIP"{
  value = aws_instance.docker.public_ip
}