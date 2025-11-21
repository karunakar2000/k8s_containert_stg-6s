locals {
    resource_name_prefix = "${var.project_name}-${var.environment}" # project_name-environment
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    backend-alb-sg_sg_id = data.aws_ssm_parameter.backend-alb-sg_sg_id.value
    private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)

    common_tags = {
        Project = var.project_name
        Environment = var.environment
        Terraform = true
    }
}

