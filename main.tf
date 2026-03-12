resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  iam_instance_profile        = var.instance_profile_name
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  user_data                   = var.user_data
  ebs_optimized               = var.ebs_optimized
  monitoring                  = var.monitoring

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  root_block_device {
    volume_size           = var.root_volume_size
    volume_type           = var.root_volume_type
    encrypted             = var.root_volume_encrypted
    kms_key_id            = var.kms_key_id
    delete_on_termination = var.delete_on_termination
  }

  tags = merge(var.tags, {
    Name = var.name
  })
}