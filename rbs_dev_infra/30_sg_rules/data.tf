data "aws_ssm_parameter" "backend-alb-sg" {
  name = "/${var.project_name}-${var.environment}/backend-alb-sg"
}
