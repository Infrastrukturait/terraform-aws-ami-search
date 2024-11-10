variable "os" {
  description = "The OS reference"
  type        = string
}

variable "amis_os_map_regex" {
  description = "Map of regex to search amis"
  type        = map(any)
  default = {
    "ubuntu-18.04" = "^ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-.*-server-.*"
    "ubuntu-20.04" = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-.*-server-.*"
    "ubuntu-22.04" = "^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-.*-server-.*"
    "debian-10"    = "^debian-10-.*"
    "debian-11"    = "^debian-11-.*"
    "amazon"       = "^amzn2-ami-hvm-.*x86_64-gp2"
  }
}

variable "amis_os_map_owners" {
  description = "Map of amis owner to filter only official amis"
  type        = map(any)
  default = {
    "ubuntu-18.04" = "099720109477"
    "ubuntu-20.04" = "099720109477"
    "ubuntu-22.04" = "099720109477"
    "debian-10"    = "136693071363"
    "debian-11"    = "136693071363"
    "amazon"       = "137112412989"
  }
}
