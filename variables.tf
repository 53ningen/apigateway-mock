provider "aws" {
  region = "${var.region}"
}

variable "region" {
  default = "ap-northeast-1"
}
