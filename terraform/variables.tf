variable "resource_group_name" {
  description = "resource_group_name"
  type = string
}

variable "location" {
  description = "vm's location"
  type = string
}

variable "admin_user" {
  description = "vm's username"
  type = string
}

variable "admin_password" {
  description = "vm's password"
  type        = string
  sensitive   = true
  validation {
    condition     = length(var.admin_password)>6
    error_message = "password too short"
  }
}

variable "source_ip_address" {
  type = string
  default = "*"
}

variable "app_port" {
  description = "The port on which the application runs."
  type = number
}

variable "db_ip" {
  description = "The IP address of the database."
  type = string
}

variable "db_password" {
  description = "The password for the database."
  type = string
}

variable "db_user" {
  description = "The user for the database."
  type = string
}

variable "web_subnet" {
  description = "The subnet for the web vm."
  type = string
}

variable "git_repo" {
  description = "git repo that is used by the extension"
  type = string
}

variable "extension_git_path" {
  description = "vm path to activate bash scripts"
  type = string
}