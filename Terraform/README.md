provider "aws" {
  region = var.region
}

// create EC2 pvt-sub01-aza
resource "aws_instance" "pvt_vm_aza" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  associate_public_ip_address = var.allow_public_ip
 
  subnet_id = var.pvt-sub01-aza_cidr_block_id
  key_name = var.key_name
  security_groups = [ var.ec2_machin_sg]


  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from Terraform1!</h1>" > /var/www/html/index.html
              EOF
  
  tags = {
    Name = "pvt_vm_aza"
  }
}
// create EC2 pvt-sub01-azb
resource "aws_instance" "pvt_vm_azb" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  associate_public_ip_address = var.allow_public_ip
 
  subnet_id = var.pvt-sub02-azb_cidr_block_id
  key_name = var.key_name
  security_groups = [ var.ec2_machin_sg]


  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from Terraform2!</h1>" > /var/www/html/index.html
              EOF
  
  tags = {
    Name = "pvt_vm_azb"
  }
}




