
# terraform-aws-ami-search

[![WeSupportUkraine](https://raw.githubusercontent.com/Infrastrukturait/WeSupportUkraine/main/banner.svg)](https://github.com/Infrastrukturait/WeSupportUkraine)
## About

Terraform module to find the last version of an AWS Ami IDs for working region, using common os name.
## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

```text
The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Source: <https://opensource.org/licenses/MIT>
```
See [LICENSE](LICENSE) for full details.
## Authors
- Rafał Masiarek | [website](https://masiarek.pl) | [email](mailto:rafal@masiarek.pl) | [github](https://github.com/rafalmasiarek)
<!-- BEGIN_TF_DOCS -->
## Documentation


### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_eof_ami"></a> [allow\_eof\_ami](#input\_allow\_eof\_ami) | Ability to use images that are no longer supported and have reached their end of life date. Default value is `false` and we do not suggest changing it. | `bool` | `false` | no |
| <a name="input_architecture"></a> [architecture](#input\_architecture) | The architecture of the image. Available values: `x86_64`*, `arm64`. | `string` | `"x86_64"` | no |
| <a name="input_os"></a> [os](#input\_os) | The OS reference name. Available vaules: `ubuntu-18.04`, `ubuntu-20.04`, `ubuntu-22.04`, `ubuntu-24.04`, `debian-10`, `debian-11`, `debian-12`, `amazon2`, `al2023`. | `string` | n/a | yes |
| <a name="input_virtualization_type"></a> [virtualization\_type](#input\_virtualization\_type) | Keyword to choose what virtualization mode created instances will use. Available values: `paravirtual`*, `hvm`. | `string` | `"hvm"` | no |

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
### Supported versions matrix

|    OS Name   | Version | Owner Id     | Regex                                                        | EOL           |
|--------------|---------|--------------|--------------------------------------------------------------|---------------|
| Ubuntu       | 18.04   | 099720109477 | `^ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-.*-server-.*`    | 31/05/2023    |
| Ubuntu       | 20.04   | 099720109477 | `^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-.*-server-.*`     | 02/04/2025    |
| Ubuntu       | 22.04   | 099720109477 | `^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-.*-server-.*`     | 01/04/2027    |
| Ubuntu       | 24.04   | 099720109477 | `^ubuntu/images/hvm-ssd/ubuntu-noble-24.04-.*-server-.*`     | 25/04/2029    |
| Debian       | 10      | 136693071363 | `^debian-10-.*`                                              | 30/06/2026    |
| Debian       | 11      | 136693071363 | `^debian-11-.*`                                              | 31/08/2026    |
| Debian       | 12      | 136693071363 | `^debian-12-.*`                                              | 10/06/2028    |
| Amazon Linux | 2       | 137112412989 | `^amzn2-ami-hvm-.*x86_64-gp2`                                | 30/06/2025    |
| Amazon Linux | 2023    | 137112412989 | `al2023-ami-2023.*`                                          | 15/03/2028    |


<!-- references -->

[repo_link]: https://github.com/Infrastrukturait/terraform-aws-ami-search
