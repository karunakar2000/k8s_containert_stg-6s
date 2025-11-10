variable "project_name" {
    default = "rbs"
}

variable "environment" {
    default = "DEV"
}

variable "sg_names" {
    default = [
     # Databases
     "mongodb-sg", "redis-sg", "mysql-sg", "rabbitmq-sg",
     # Backend
     "catalogue", "user", "cart", "shipping", "payment",
     # Frontend
     "frontend",
     # Bastion
     "bastion",
     # Frontend LoadBalancer 
     "frontend-lb"
    
    
    ]
}

