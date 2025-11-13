data "aws_ssm_parameter" "backend-alb-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/backend-alb-sg_sg_id"
}

data "aws_ssm_parameter" "bastion-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/bastion-sg_sg_id"
}

data "aws_ssm_parameter" "mongodb-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/mongodb-sg_sg_id"
}

data "aws_ssm_parameter" "redis-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/redis-sg_sg_id"
}

data "aws_ssm_parameter" "rabbitmq-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/rabbitmq-sg_sg_id"
}

data "aws_ssm_parameter" "mysql-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/mysql-sg_sg_id"
}