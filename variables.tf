variable "os" {
  description = "The OS reference name. Available vaules: `ubuntu-18.04`, `ubuntu-20.04`, `ubuntu-22.04`, `ubuntu-24.04`, `debian-10`, `debian-11`, `debian-12`, `amazon2`, `al2023`."
  type        = string

  validation {
    condition     = contains(["ubuntu-18.04", "ubuntu-20.04", "ubuntu-22.04", "ubuntu-24.04", "debian-10", "debian-11", "debian-12", "amazon2", "al2023"], var.os)
    error_message = "Invalid value. Available vaules: ubuntu-18.04, ubuntu-20.04, ubuntu-22.04, ubuntu-24.04, debian-10, debian-11, debian-12, amazon2, al2023."
  }
}

variable "virtualization_type" {
  description = "Keyword to choose what virtualization mode created instances will use. Available values: `paravirtual`*, `hvm`."
  type        = string
  default     = "hvm"

  validation {
    condition     = contains(["hvm", "paravirtual"], var.virtualization_type)
    error_message = "Invalid value. Available values: paravirtual or hvm."
  }
}

variable "architecture" {
  description = "The architecture of the image. Available values: `x86_64`*, `arm64`."
  type        = string
  default     = "x86_64"

  validation {
    condition     = contains(["x86_64", "arm64"], var.architecture)
    error_message = "Invalid value. Available values: x86_64 or arm64."
  }
}

variable "allow_eof_ami" {
  description = "Ability to use images that are no longer supported and have reached their end of life date. Default value is `false` and we do not suggest changing it."
  type        = bool
  default     = false
}
