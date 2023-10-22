#1 Environment Variables
variable "environment" {
  description = "Environment to Deploy the Infrastructure"
  type        = string
  default     = "Dev"
}

variable "project-name" {
  description = "Name of the Project"
  type        = string
  default     = "rentzone"
}

#2 vpc variables

variable "vpc_cidr" {
  description = "VPC cidr Block"
  type        = string
  default     = "10.0.0.0/16"

}

#3 public subnet az1 cidr
variable "public_subnet_az1_cidr" {
  description = "public subnet az1 cidr"
  type        = string
  default     = "10.0.0.0/19"

}

#4 public subnet az2 cidr
variable "public_subnet_az2_cidr" {
  description = "public subnet az2 cidr"
  type        = string
  default     = "10.0.32.0/19"

}

#5 private app subnet az1 cidr
variable "private_app_subnet_az1_cidr" {
  description = "private app subnet az1 cidr"
  type        = string
  default     = "10.0.64.0/19"

}

#6 private app subnet az2 cidr
variable "private_app_subnet_az2_cidr" {
  description = "private app subnet az2 cidr"
  type        = string
  default     = "10.0.96.0/19"

}

#7  private data subnet az1 cidr
variable "private_data_subnet_az1_cidr" {
  description = "private data subnet az1 cidr"
  type        = string
  default     = "10.0.128.0/19"

}

#8  private data subnet az2 cidr
variable "private_data_subnet_az2_cidr" {
  description = "private data subnet az2 cidr"
  type        = string
  default     = "10.0.160.0/19"

}

#9 Security Groups Variables
# ssh location
variable "ssh_location" {
  description = "SSH Location"
  type        = list(string)
  default     = ["89.64.82.55/32"]

}




# 13 Provider Variable
variable "region" {
  type        = string
  description = "AWS Region to Provision the Infrastructure"
  default     = "us-east-1"
}

variable "profile" {
  type        = string
  description = "AWS profile that will Provision the Infrastructure"
  default     = "obinna"
}

##Instance
#key name
variable "key_pairs" {
  type        = string
  description = "ssh key"
  default     = "k8s"
}


variable "instance_type" {
  default     = "t3.medium"
  description = "instance type "
  type        = string
}

