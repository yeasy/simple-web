#############
# Default VPC
#############
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

########################
# Default private subnet
########################
resource "aws_default_subnet" "private_subnet" {
  availability_zone = var.availability_zone_1

  tags = {
    Name = "Default private subnet for eu-west-2a"
  }
}
########################
# Default Security Group
########################
resource "aws_default_security_group" "default" {
  vpc_id      = aws_vpc.mainvpc.id
  name        = var.private_sg_name
  description = "Security group for the ${var.private_sg_name}"
}


##############
# EC2 Instance
##############
resource "aws_instance" "default_instance" {
vpc_security_group_ids      = [aws_default_security_group.default.id]
subnet_id                   = aws_default_subnet.private_subnet.id
ami                         = var.ami
instance_type               = var.instance_type
associate_public_ip_address = false

user_data = <<-EOF
#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache
cd /var/www/html
echo "This is a test file by PAUL" > index.html
sudo systemctl restart apache
  EOF
  
  tags = {
    Name = "Default Instnace"
  }

}