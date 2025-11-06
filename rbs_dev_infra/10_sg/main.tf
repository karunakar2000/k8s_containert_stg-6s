module "catalogue_sg" {
  source = "terraform-aws-modules/security-group/aws"
  name        = "${local.resource_name_prefix}-catalogue-sg"
  use_name_prefix = false
  description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

}