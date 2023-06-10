variable "project-id" {
  type        = string
  description = "Enter Your Project Id"
}

variable "region" {
  type        = string
  description = "Enter Your Region"
}

variable "credential" {
  type        = string
  description = "Enter your JSON file"
}

variable "instance-name" {
  type        = string
  description = "Enter Your Instance Name"
}

variable "machine-type" {
  type        = string
  description = "Enter Your Instance Machine Type"
}


variable "size" {
  type        = number
  description = "Enter Your Size"
}

variable "image-name" {
  type        = string
  description = "Enter Your Image Name"
}

variable "labels" {
  type        = map(any)
  description = "Enter Your labels"
}

variable "network" {
  type        = string
  description = "Enter Your Network Name"
}
variable "subnet-name" {
  type        = string
  description = "Enter Your subnet Name"
}


variable "firewall-name" {
  type        = string
  description = "Enter Your Firewall Name"
}

variable "firewal-source-range" {
  type        = list(any)
  description = "Enter Your Source Range"
}

