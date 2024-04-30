variable "project" {
  default = "123456789"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "auto_create_subnetworks" {
  type    = bool
  default = true

}

variable "network_name" {
  type    = string
  default = "module-vpc"
}

variable "instance_template" {
  type    = string
  default = "https://www.googleapis.com/compute/v1/projects/inspired-anchor-413607/regions/us-central1/instanceTemplates/instance-template-20240429-064858"

}
