#### Before editing this file, be sure to read the AWS documentation on:
####
####  * VPCs
####  * Programmatic Access
####
#### Grab your enterprise token from the MariaDB website (https://customers.mariadb.com/downloads/token/).

#### EDIT THESE ITEMS

variable "mariadb_enterprise_token" {
  type    = string
  default = "YOUR MARIADB ENTERPRISE TOKEN HERE"
}

variable "aws_access_key" {
  type    = string
  default = "YOUR AWS ACCESS KEY HERE"
}

variable "aws_secret_key" {
  type    = string
  default = "YOUR AWS SECRET KEY HERE"
}

variable "key_pair_name" {
  type    = string
  default = "YOUR AWS KEY PAIR NAME HERE"
}

variable "ssh_key_file" {
  type    = string
  default = "/PATH/TO/KEY/FILE.PEM"
}

variable "aws_vpc" {
  type    = string
  default = "YOUR AWS VPC ID HERE"
}

variable "cmapi_key" {
  type    = string
  default = "CREATE A COLUMNSTORE API KEY HERE"
}

#### DATABASE CREDENTIALS

variable "admin_user" {
  type    = string
  default = "CHOOSE A MARIADB ADMIN USERNAME HERE"
}

variable "admin_pass" {
  type    = string
  default = "SET YOUR MARIADB ADMIN USER PASSWORD HERE"
}

variable "maxscale_user" {
  type    = string
  default = "CHOOSE A MAXSCALE USERNAME HERE"
}

variable "maxscale_pass" {
  type    = string
  default = "SET YOUR MAXSCALE USER PASSWORD HERE"
}

variable "repli_user" {
  type    = string
  default = "CHOOSE A REPLICA USERNAME HERE"
}

variable "repli_pass" {
  type    = string
  default = "SET YOUR REPLICA USER PASSWORD HERE"
}

variable "cej_user" {
  type    = string
  default = "CHOOSE A COLUMNSTORE UTILITY USERNAME HERE"
}

variable "cej_pass" {
  type    = string
  default = "SET YOUR COLUMNSTORE UTILITY USER PASSWORD HERE"
}

variable "pcs_pass" {
  type    = string
  default = "SET YOUR METADATA PCS CLUSTER PASSWORD HERE"
}

#### DO NOT EDIT BELOW THIS POINT UNLESS YOU ARE FAMILIAR WITH THESE PARAMETERS

variable "mariadb_version" {
  type    = string
  default = "10.5"
}

variable "maxscale_version" {
  type    = string
  default = "2.5"
}

variable "reboot" {
  type    = bool
  default = "1"
}

variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "aws_zone" {
  type    = string
  default = "us-west-2a"
}

variable "aws_ami" {
  type    = string
  default = "ami-0a4497cbe959da512"
}

# "ami-0a4497cbe959da512" (centos7)
# "ami-0c9ff37f7a65a36a2" (centos8)
# "ami-0ac73f33a1888c64a" (ubuntu18)
# "ami-07dd19a7900a1f049" (ubuntu20)

variable "aws_mariadb_instance_size" {
  type    = string
  default = "t3.2xlarge"
}

variable "aws_maxscale_instance_size" {
  type    = string
  default = "t3.medium"
}

variable "use_s3" {
  type    = bool
  default = "1"
}

variable "s3_domain" {
  type    = string
  default = "amazonaws.com"
}

variable "elasticache_engine" {
  type    = string
  default = "redis"
}

variable "elasticache_port" {
  type    = string
  default = "6379"
}
