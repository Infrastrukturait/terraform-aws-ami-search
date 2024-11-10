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
| <a name="input_architecture"></a> [architecture](#input\_architecture) | The architecture of the image. | `string` | `"x86_64"` | no |
| <a name="input_os"></a> [os](#input\_os) | The OS reference name. To see available values, please check `supported_os` reference. | `string` | n/a | yes |
| <a name="input_virtualization_type"></a> [virtualization\_type](#input\_virtualization\_type) | Keyword to choose what virtualization mode created instances will use. Available values: `paravirtual, `hvm`.` | `string` | `"hvm"` | no |

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
  os     = "amazon2"
}

resource "aws_instance" "instance" {
  instance_type = var.instance_type
  ami           = module.ami.ami_id
  tags          = module.app_prod_ec2_label.tags
}
```

<!-- END_TF_DOCS -->
