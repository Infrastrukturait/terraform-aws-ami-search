<!-- BEGIN_TF_DOCS -->
## Documentation


### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amis_os_map_owners"></a> [amis\_os\_map\_owners](#input\_amis\_os\_map\_owners) | Map of amis owner to filter only official amis | `map(any)` | <pre>{<br>  "amazon": "137112412989",<br>  "debian-10": "136693071363",<br>  "debian-11": "136693071363",<br>  "ubuntu-18.04": "099720109477",<br>  "ubuntu-20.04": "099720109477",<br>  "ubuntu-22.04": "099720109477"<br>}</pre> | no |
| <a name="input_amis_os_map_regex"></a> [amis\_os\_map\_regex](#input\_amis\_os\_map\_regex) | Map of regex to search amis | `map(any)` | <pre>{<br>  "amazon": "^amzn2-ami-hvm-.*x86_64-gp2",<br>  "debian-10": "^debian-10-.*",<br>  "debian-11": "^debian-11-.*",<br>  "ubuntu-18.04": "^ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-.*-server-.*",<br>  "ubuntu-20.04": "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-.*-server-.*",<br>  "ubuntu-22.04": "^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-.*-server-.*"<br>}</pre> | no |
| <a name="input_os"></a> [os](#input\_os) | The OS reference | `string` | n/a | yes |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | The AMI id result of the search |
| <a name="output_owner_id"></a> [owner\_id](#output\_owner\_id) | The owner id of the selected ami |
| <a name="output_root_device_name"></a> [root\_device\_name](#output\_root\_device\_name) | The device name of the root dev |

### Examples

```hcl
module "app_prod_ec2_label" {
  source  = "cloudposse/label/null"
  version = "v0.25.0"

  namespace  = "app"
  stage      = "prod"
  name       = "jumphost"
  attributes = ["private"]
  delimiter  = "-"

  tags = {
    "BusinessUnit" = "XYZ",
  }
}


module "ami" {
  source = "../../"
  os     = "amazon"
}

resource "aws_instance" "instance" {
  instance_type = var.instance_type
  ami           = module.ami.ami_id
  tags          = module.app_prod_ec2_label.tags
}
```

<!-- END_TF_DOCS -->
