variable "ami" {
  type        = string
  description = "Linux AMI with docker"
  default     = "ami-02d0a1cbe2c3e5ae4"
}

variable "instance_type" {
  type        = string
  description = "AWS EC2 instance type to deploy scania app"
  default     = "t3.micro"
}

variable "scania_app_version" {
  type        = string
  description = "version of scania app. https://hub.docker.com/r/alejovicu/scania-app"
}

variable "scania_app_port" {
  type        = string
  description = "scania app port"
  default     = "80"
}
