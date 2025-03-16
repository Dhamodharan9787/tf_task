variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
}
variable "ami" {
  description = "The AMI ID for the instance"
  type        = string
}
variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "The environment (dev, staging & prod)"
  type        = string
  default     = "dev"
}   
variable "ports" {
  type = list(number)
  default = [ 22, 80, 443 ]
}