# Module to manage instance creating

resource "aws_instance" "ubuntu_server" {
  count = var.instances_count
  ami           = var.instance_ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = var.instance_security_groups
  associate_public_ip_address = true 
  availability_zone = var.instance_az
  
    tags = {
      "Name" = "UBUBTU-SERVER-${var.environment}"
      "Environment" = var.environment
      "Project" = var.project_name
    }
}