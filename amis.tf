locals {
  amis = {
    "ubuntu-18.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-.*-server-.*"
      owner = 099720109477
      eof   = "2023-05-31T00:00:00+00:00"
    }

    "ubuntu-20.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-.*-server-.*"
      owner = 099720109477
      eof   = "2025-04-02T00:00:00+00:00"
    }

    "ubuntu-22.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-.*-server-.*"
      owner = 099720109477
      eof   = "2027-04-01T00:00:00+00:00"
    }

    "ubuntu-24.04" = {
      regex = "^ubuntu/images/hvm-ssd/ubuntu-noble-24.04-.*-server-.*"
      owner = 099720109477
      eof   = "2029-04-25T00:00:00+00:00"
    }

    "debian-10" = {
      regex = "^debian-10-.*"
      owner = 136693071363
      eof   = "2024-06-30T00:00:00+00:00"
    }

    "debian-11" = {
      regex = "^debian-11-.*"
      owner = 136693071363
      eof   = "2026-08-31T00:00:00+00:00"
    }

    "debian-12" = {
      regex = "^debian-12-.*"
      owner = 136693071363
      eof   = "2028-06-10T00:00:00+00:00"
    }

    "amazon2" = {
      regex = "^amzn2-ami-hvm-.*x86_64-gp2"
      owner = 137112412989
      eof   = "2025-06-30T00:00:00+00:00"
    }

    "al2023" = {
      regex = "^al2023-ami-2023.*"
      owner = 137112412989
      eof   = "2028-03-15T00:00:00+00:00"
    }
  }
}
