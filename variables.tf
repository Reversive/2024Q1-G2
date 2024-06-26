variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "CC-2024Q1-G2"
}
variable "vpc_cidr" {
  description = "CIDR of the VPC"
  type        = string
}
variable "public_cidr" {
  description = "CIDR of the public subnet"
  type        = string
}
variable "public_az" {
  description = "Name of the public availability zone"
  type        = string
}
variable "table_names" {
  description = "Name of the DynamoDB tables"
  type        = list(string)
  default     = ["tweets-raw", "tweets-processed"]
}
variable "db_billing_mode" {
  description = "Billing mode for the Dynamo database"
  type        = string
  default     = "PAY_PER_REQUEST"
}
variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
}
variable "account_id" {
  description = "ID of your AWS account"
  type        = string
}