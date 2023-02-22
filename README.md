# Terraform AWS EC2 Production Module

## Description

This is a Terraform module for provisioning Amazon EC2 instances in a production environment. The module allows you to specify the AMI ID, instance type, subnet ID, security groups, and number of instances to create. It also provides an option to automatically assign public IP addresses to the instances.

## Usage Example

To use this module, include the following code in your Terraform configuration:

```terraform
    module "ec2" {
    source = "github.com/sv222/terraform-aws-ec2"

    ami_id            = "ami-0c55b159cbfafe1f0"
    instance_type     = "t2.micro"
    subnet_id         = "subnet-0123456789abcdef0"
    security_group_ids = ["sg-0123456789abcdef0"]
    instance_count    = 1
    assign_public_ip  = true
}
```

The above code launches a single t2.micro instance with the specified AMI ID, in the specified public subnet and security group. The assign_public_ip variable is set to true, which automatically assigns a public IP address to the instance. The output section returns the instance ID, public IP, and private IP addresses for the created instance.

## Contributing

Feel free to contribute to this project by submitting pull requests or reporting issues.

## License

This project is licensed under the MIT License.
