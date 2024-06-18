variable "resource_group_name" {

  type = string

  description = "This is a variable for resource group name"


}

variable "location" {

  type = string

  description = "This is a variable to pass the location"

  default = "West Europe"

}

variable "tags" {

  type = any

  default = {
    env = "test"
  }

}