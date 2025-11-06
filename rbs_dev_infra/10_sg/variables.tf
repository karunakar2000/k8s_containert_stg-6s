variable "project_name" {
    default = "rbs"
}

variable "environment" {
    default = "DEV"
}

variable "sg_names" {
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}