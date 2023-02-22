variable "aws_region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "ami_id" {
  type        = string
  description = "The ID of the Amazon Machine Image to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The type of EC2 instance to create"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to launch the EC2 instance in"
}

variable "security_group_ids" {
  type        = list(string)
  description = "A list of security group IDs to attach to the EC2 instance"
}

variable "instance_count" {
  type        = number
  description = "The number of EC2 instances to launch"
}

variable "assign_public_ip" {
  type        = bool
  description = "Whether to automatically assign a public IP address to the EC2 instance"
  default     = false
}