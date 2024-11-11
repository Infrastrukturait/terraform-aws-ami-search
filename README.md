
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
