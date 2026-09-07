terraform {
  required_providers {
    aws = {
      source  = "hc-registry.website.k2.cloud/c2devel/rockitcloud"
      version = "~> 25.5.5"
    }
    tls = {
      source  = "hc-registry.website.k2.cloud/hashicorp/tls"
      version = "~> 3.1.0"
    }
  }
}

variable "switch_id" {
}

variable "access_key" {
}

variable "secret_key" {
}

variable "ami" {
}

variable "public_ipv4_pool" {
}

variable "region" {
  default = "ru-msk"
}

variable "az" {
}

variable "instance_type" {
  default = "m1.micro"
}

variable "account_id" {
}

variable "template_owner" {
}

variable "template_name" {
}

provider "tls" {
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}
