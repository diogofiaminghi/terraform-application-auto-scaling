variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "service_name" {
  type        = string
  description = ""
  default     = "autoscaling-app"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "instance_key_name" {
  type        = string
  description = ""
  default     = "terraform-application-auto-scaling.pem"
}