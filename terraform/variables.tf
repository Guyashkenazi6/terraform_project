variable "resource_group_name" {
  type = string
  default = "rg-terraform-prod-westeu"
}

variable "location" {
  type = string
  default= "westeurope"
}
variable "db_password" {
  description = "db password"
  type = string
}

variable "web_app_port" {
  description = "open to web app exported port"
  type = number
  default = 8080
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
  # ""
}
