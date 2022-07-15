data "aws_ami" "this" {
  most_recent = true

 filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  name_regex = "${lookup(var.amis_os_map_regex, var.os)}"
  owners= [lookup(var.amis_os_map_owners, var.os)]
}
