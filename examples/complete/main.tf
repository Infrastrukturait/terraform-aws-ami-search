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
