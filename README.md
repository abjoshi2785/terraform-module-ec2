# terraform-module-ec2

Reusable AWS EC2 module.

## Versioning

Module version is stored in the `VERSION` file.

Consumers should pin using Git tags.

```hcl
module "ec2" {
  source = "git::https://github.com/your-org/terraform-module-ec2.git?ref=v1.0.0"
}
```

## Module Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | AMI ID for the EC2 instance | `string` | n/a | yes |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Whether to associate a public IP address | `bool` | `false` | no |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | IAM instance profile name to attach to the instance | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Optional EC2 key pair name | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | EC2 instance name | `string` | n/a | yes |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of security group IDs to attach to the instance | `list(string)` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID where the instance will be deployed | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to the instance | `map(string)` | `{}` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Optional EC2 user data | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | EC2 instance ID |
| <a name="output_instance_name"></a> [instance\_name](#output\_instance\_name) | EC2 instance name |
| <a name="output_module_version"></a> [module\_version](#output\_module\_version) | Module version from VERSION file |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | EC2 private IP address |
<!-- END_TF_DOCS -->
