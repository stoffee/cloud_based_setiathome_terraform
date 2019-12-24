variable "prefix" {
  description = "The Prefix used for all resources in this example"
  default     = "seti"
}

variable "location" {
  description = "The Azure Region in which the resources in this example should exist"
  default     = "West US"
}

variable "ssh_admin_username" {
  description = "username of the ssh user"
  default     = "seti"
}

variable "ssh_admin_password" {
  description = "username of the ssh user"
  default     = "Password1234!"
}

