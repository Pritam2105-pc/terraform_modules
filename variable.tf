variable "region" {
  default = "ap-south-1"
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}