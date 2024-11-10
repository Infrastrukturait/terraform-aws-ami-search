locals {
  amis_map = {
    "ubuntu-18.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-.*-server-.*"
      owner = 099720109477
      eof   = "31-05-2023"
    }

    "ubuntu-20.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-.*-server-.*"
      owner = 099720109477
      eof   = "02-04-2025"
    }

    "ubuntu-22.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-.*-server-.*"
      owner = 099720109477
      eof   = "01-04-2027)"
    }

    "ubuntu-24.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-noble-24.04-.*-server-.*"
      owner = 099720109477
      eof   = "25-04-2029"
    }

    "debian-10" = {
      regex = "^debian-10-.*"
      owner = 136693071363
      eof   = "30-06-2024"
    }

    "debian-11" = {
      regex = "^debian-11-.*"
      owner = 136693071363
      eof   = "31-08-2026"
    }

    "debian-12" = {
      regex = "^debian-12-.*"
      owner = 136693071363
      eof   = "10-06-2028"
    }

    "amazon2" = {
      regex = "^amzn2-ami-hvm-.*x86_64-gp2"
      owner = 137112412989
      eof   = "30-06-2025"
    }

    "al2023" = {
      regex = "al2023-ami-2023.*"
      owner = 137112412989
      eof   = "15-03-2028"
    }
  }
}
