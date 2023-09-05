variable "resource_group_name" {
  type = string
  default = "rg-terraform-prod-westeu"
}

variable "location" {
  type = string
  default= "westeurope"
}

variable "admin_user" {
  description = "vm's username"
  type = string
#  default = "adminuser"
}

variable "admin_password" {
  description = "vm's password"
  type        = string
  sensitive   = true
  validation {
    condition     = length(var.admin_password)>6
    error_message = "password too short"
    #  default = "user123"
  }
}

variable "source_ip_address" {
  type = string
  default = "*"
}

variable "app_port" {
  description = "The port on which the application runs."
  default     = 8080
}

variable "db_ip" {
  description = "The IP address of the database."
  default     = "10.1.1.4"
}

variable "db_password" {
  description = "The password for the database."
  default     = "user123"
}

variable "db_user" {
  description = "The user for the database."
  default     = "adminuser"
}
