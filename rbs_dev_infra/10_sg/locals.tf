locals {
    resource_name_prefix = "${var.project_name}-${var.environment}" # project_name-environment
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}