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
  description = "ID or name of the VPC to launch the EC2 instance in"
  default = "vpc-for-projects" 
} 

variable "subnet_id" {
  description = "ID or name of the subnet to associate with the EC2 instance"
  default = "subnet-forreddit-01" 
} 

variable "security_group_ids" { 
  description = "List of security group IDs or names to associate with the EC2 instance"
  type = list(string) 
  default = ["redditproject-sg"] 
}
