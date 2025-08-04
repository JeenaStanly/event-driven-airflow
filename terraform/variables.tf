variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default = "us-east-1" 
} 

variable "instance_type" {
  description = "EC2 instance type to use for Airflow server"
  default = "t2.micro" 
} 

variable "ami_id" {
  description = "AMI ID for the Ubuntu 24.04 LTS image used in EC2"
  default = "ami-020cba7c55df1f615" 
} 

variable "key_name" {
  description = "Name of the existing EC2 key pair used for SSH access"
  default = "Airflow Web Server KeyPair" 
} 

variable "vpc_id" {
  description = "The VPC ID to launch the EC2 instance in"
  type        = string
  default     = "vpc-0f663d059ca1569ce"
}

variable "subnet_id" {
  description = "The Subnet ID to associate with the EC2 instance"
  type        = string
  default     = "subnet-0958b791aec1ccaee"
}

variable "security_group_ids" {
  description = "List of Security Group IDs to associate with the EC2 instance"
  type        = list(string)
  default     = ["sg-0076f26bf6a7e3f39"]
}


