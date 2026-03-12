output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.this.id
}

output "private_ip" {
  description = "EC2 private IP address"
  value       = aws_instance.this.private_ip
}

output "instance_name" {
  description = "EC2 instance name"
  value       = aws_instance.this.tags["Name"]
}

output "module_version" {
  description = "Module version from VERSION file"
  value       = "1.0.0"
}
