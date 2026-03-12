mock_provider "aws" {}

variables {
  name                        = "demo-ec2"
  ami_id                      = "ami-1234567890abcdef0"
  instance_type               = "t3.micro"
  subnet_id                   = "subnet-12345678"
  security_group_ids          = ["sg-12345678"]
  instance_profile_name       = "demo-ec2-role-profile"
  associate_public_ip_address = false

  tags = {
    Environment = "dev"
  }
}

run "plan_ec2" {
  command = plan

  assert {
    condition     = aws_instance.this.ami == "ami-1234567890abcdef0"
    error_message = "AMI ID was not set correctly."
  }

  assert {
    condition     = aws_instance.this.instance_type == "t3.micro"
    error_message = "Instance type was not set correctly."
  }

  assert {
    condition     = aws_instance.this.subnet_id == "subnet-12345678"
    error_message = "Subnet ID was not set correctly."
  }

  assert {
    condition     = aws_instance.this.iam_instance_profile == "demo-ec2-role-profile"
    error_message = "Instance profile was not set correctly."
  }

  assert {
    condition     = output.module_version == "1.0.0"
    error_message = "Module version output does not match expected version."
  }
}
