data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240801"]
  }

}
resource "aws_instance" "docker" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance-type
  associate_public_ip_address = true
  key_name                    = "my_idrsa"
  security_groups             = [var.sg]
  subnet_id                   = var.subnet-id
  user_data_base64 = base64encode(file("install.sh"))
  tags = {
    Name = "dockertest"
  }
}
