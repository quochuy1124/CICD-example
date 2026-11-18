variable "region" {
  type        = string
  description = "AWS region to deploy resources"
  default     = "ap-southeast-2"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "instance_count" {
  type        = number
  description = "Number of EC2 instances"
  default     = 1

  validation {
    condition     = var.instance_count > 0 && var.instance_count <= 5
    error_message = "Instance count must be between 1 and 5."
  }
}

variable "access_key" {
  type        = string
  description = "access key in AWS"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "secret key in AWS"
  sensitive   = true
}

variable "ami_linus" {
  type        = string
  description = "ami amazon linus in southeath-2"
  default     = "ami-0e9262cbb2344d5ee"
}

