data "aws_region" "current" {}

data "aws_availability_zones" "available" {
  state = "available"
}
variable "env" {
  description = "The environment of the project"
  default     = "project"
}

variable "app" {
  description = "The app of the project"
  default     = "app"
}

variable "aws_region" {
  description = "aws region"
}

variable "aws_profile" {
  description = "aws profile"
}
data "aws_caller_identity" "current" {}

locals {
  aws_account_id = data.aws_caller_identity.current.account_id
}

variable "name_container" {
  description = "The container name"
  default     = "nginx"
}
variable "web_server_image" {
  description = "The web server image to run in the ECS cluster"
  default     = "152617774363.dkr.ecr.eu-central-1.amazonaws.com/app-project-nginx"
}
variable "remote_state_bucket" {}