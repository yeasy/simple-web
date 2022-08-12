variable "availability_zone_1" {
  default = "eu-west-2a"
  type    = string 
}

variable "instance_type" {
    description = "the instance type for ec2 instance"
    default     = "t2.micro"
    type        = string
}

variable "ami" {
  description = "ubuntu ami for ec2 instance"
  default     = "ami-0fb391cce7a602d1f"
}