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

  name_regex = lookup(local.amis[var.os], "regex")
  owners     = [lookup(local.amis[var.os], "owner")]

  lifecycle {
    precondition {
      condition     = var.allow_eof_ami && (timecmp(timestamp(), lookup(local.amis[var.os], "eof")) < 1)
      error_message = <<EOF
You are trying to use an image that is no longer supported and has reached its end of life date.
For security reasons, we do not recommend using this image.
To be able to use this image anyway, change the parameter `allow_eof_ami` to `true`.
EOF
    }
  }

}
