data "aws_ami" "this" {
  most_recent = true

  filter {
    name   = "virtualization-type"
    values = [var.virtualization_type]
  }

  filter {
    name   = "architecture"
    values = [var.architecture]
  }

  name_regex = lookup(local.amis_map[var.os], "regex")
  owners     = [lookup(local.amis_map[var.os], "owner")]
}
