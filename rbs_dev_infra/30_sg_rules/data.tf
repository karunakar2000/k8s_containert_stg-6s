data "aws_ssm_parameter" "" {
  name = "/${var.project_name}-${var.environment}/vpc_id"
}
