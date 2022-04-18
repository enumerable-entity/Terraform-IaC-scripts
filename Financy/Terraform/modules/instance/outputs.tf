output "ubuntu_ami_id" {
  value = data.aws_ami.ubuntu_server_ami.id
}