variable "project_name" {
    default = "RBS"
}

variable "environment" {
    default = "DEV"
}

variable "sg_names" {
    default = [
     # Databases
     "mongodb-sg", "redis-sg", "mysql-sg", "rabbitmq-sg",
     # Backend
     "catalogue-sg", "user-sg", "cart-sg", "shipping-sg", "payment-sg",
     # Frontend
     "frontend-sg",
     # Bastion
     "bastion-sg",
     # Frontend LoadBalancer 
     "frontend-lb-sg"
     # Backend ALB
     "backend-alb"
    
    
    ]
}

