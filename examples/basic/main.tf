module "ec2" {
  source = "../.."

  name                        = "demo-ec2"
  ami_id                      = "ami-1234567890abcdef0"
  instance_type               = "t3.micro"
  subnet_id                   = "subnet-12345678"
  security_group_ids          = ["sg-12345678"]
  instance_profile_name       = "demo-ec2-role-profile"
  associate_public_ip_address = false

  tags = {
    Environment = "dev"
    Project     = "strategy3-demo"
  }
}
