data "aws_ssm_parameter" "backend-alb-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/backend-alb-sg_sg_id"
}

data "aws_ssm_parameter" "bastion-sg_sg_id" {
  name = "/${var.project_name}-${var.environment}/bastion-sg_sg_id"
}
