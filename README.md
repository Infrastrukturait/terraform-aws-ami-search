
# terraform-aws-ami-search

[![WeSupportUkraine](https://raw.githubusercontent.com/Infrastrukturait/WeSupportUkraine/main/banner.svg)](https://github.com/Infrastrukturait/WeSupportUkraine)
## About

Terraform module to find the last version of an AWS Ami IDs for working region, using common os name.
## License

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

```text
GNU GENERAL PUBLIC LICENSE
Version 3, 29 June 2007

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```
## Authors
- Rafał Masiarek | [website](https://masiarek.pl) | [email](mailto:rafal@masiarek.pl) | [github](https://github.com/rafalmasiarek)
### Supported versions matrix

| OS Name | Version | Owner Id     | Regex                                                        | EOL           |
|---------|---------|--------------|--------------------------------------------------------------|---------------|
| ubuntu  | 18.04   | 099720109477 | `^ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-.*-server-.*`    | April, 2023   |
| ubuntu  | 20.04   | 099720109477 | `^ubuntu/images/hvm-ssd/ubuntu-focal-20.04-.*-server-.*`     | April, 2025   |
| ubuntu  | 22.04   | 099720109477 | `^ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-.*-server-.*`     | April, 2027   |
| debian  | 10      | 136693071363 | `^debian-10-.*`                                              | August, 2022  |
| debian  | 11      | 136693071363 | `^debian-11-.*`                                              | June, 2026    |
| amazon  | 2       | 137112412989 | `^amzn2-ami-hvm-.*x86_64-gp2`                                | June, 2024    |



<!-- references -->

[repo_link]: https://github.com/Infrastrukturait/terraform-aws-ami-search