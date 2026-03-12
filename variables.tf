variable "name" {
  description = "EC2 instance name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be deployed"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to the instance"
  type        = list(string)
}

variable "instance_profile_name" {
  description = "IAM instance profile name to attach to the instance"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address"
  type        = bool
  default     = false
}

variable "key_name" {
  description = "Optional EC2 key pair name"
  type        = string
  default     = null
}

variable "user_data" {
  description = "Optional EC2 user data"
  type        = string
  default     = null
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS optimized"
  type        = bool
  default     = true
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
  default     = true
}

variable "root_volume_size" {
  description = "Root volume size in GiB"
  type        = number
  default     = 20
}

variable "root_volume_type" {
  description = "Root volume type"
  type        = string
  default     = "gp3"
}

variable "root_volume_encrypted" {
  description = "Whether the root volume is encrypted"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "Optional KMS key ID for EBS encryption"
  type        = string
  default     = null
}

variable "delete_on_termination" {
  description = "Whether the root volume should be deleted on termination"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the instance"
  type        = map(string)
  default     = {}
}