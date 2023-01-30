variable "aws_access_key" {
  type = string
  description = "AWS Access Keys"
  sensitive = true
}

variable "aws_secret_key" {
    type = string
    description = "AWS Secret keys"
    sensitive = true
}

variable "aws_region" {
    type = string
    description = "AWS Regions to create a region"
    default = "us-east-1"
}

variable "enable_dns_hostnames" {
    type = bool
    description = "Enable DNS in the VPC"
    default = true
}

variable "vpc_cidr_block" {
    type = string
    description = "Base CIDR block for the VPC"
    default = "10.0.0.0/16"
}

variable "vpc_subnets_cidr_block" {
    type = list(string)
    description = "Subnets CIDR block for the VPC"
    default = ["10.0.0.0/24","10.0.1.0/24"]
}

variable "map_public_ip_on_launch" {
    type = bool
    description = "Map a public IP Address for the subnet Instance"
    default = true
}

variable "instance_type" {
    type = string
    description = "The type of instance to be provisioned."
    default = "t2.micro"
}

variable "company" {
    type = string
    description = "Common_Tag for resources depicting Company"
    default = "Paymentus"
}

variable "project" {
    type = string
    description = "Common_Tag for resources depicting the project"
}

variable "billing_code" {
    type = string
    description = "Billing Tag for the resources"
}