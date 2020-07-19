variable "location" {
  description = "Location of our resouces"
  type        = string
}

# variable "instance" {
#   description = "instance."
#   type        = string
# }
variable "environment" {
  description = "name of environment in our case it is dev"
  type        = string
}

variable "landing_storage_containers" {
    description = "example names for each storage container"
    default = [
        "aircraft",
        "airlines",
        "airports",
    ]
}