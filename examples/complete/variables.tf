variable "region" {
  type        = string
  description = "AWS Region."
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t3.small"
}
