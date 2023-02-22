output "instance_ids" {
  value = aws_instance.ec2_instance.*.id
}

output "public_ips" {
  value = aws_network_interface.ec2_instance.*.association[0].public_ip
}

output "private_ips" {
  value = aws_network_interface.ec2_instance.*.private_ip
}