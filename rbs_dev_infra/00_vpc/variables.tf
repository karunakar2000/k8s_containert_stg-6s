variable "cidr_block" {
    default = "172.17.0.0/16"
}

variable "project_name" {
    default = "rbs"
}

variable "environment" {
    default = "DEV"
}

variable "vpc_tag" {
    default = {
        Purpose = "dev-test"
        DontDelete = "true"
        
    }
}

variable "public_subnet_cidrs" {
    default = ["172.17.1.0/24", "172.17.2.0/24"]
}

variable "private_subnet_cidrs" {
    type = list
    default = ["172.17.5.0/24", "172.17.6.0/24"]
}

variable "database_subnet_cidrs" {
    type = list
    default = ["172.17.10.0/24", "172.17.11.0/24"]
}
