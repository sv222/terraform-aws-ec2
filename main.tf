provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "ec2_instance" {
  name_prefix = "ec2_instance_"
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_network_interface" "ec2_instance" {
  count           = var.instance_count
  subnet_id       = var.subnet_id
  security_groups = var.security_group_ids
  attachment {
    device_index = count.index
  }
  dynamic "ipv4_address" {
    for_each = var.assign_public_ip ? [1] : []
    content {
      # Auto-assign a public IP address if requested
      associate_public_ip_address = true
    }
  }
}

resource "aws_instance" "ec2_instance" {
  count             = var.instance_count
  ami               = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  network_interface = [aws_network_interface.ec2_instance[count.index]]
}


