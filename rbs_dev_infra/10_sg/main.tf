# Using open source module:

# module "catalogue_sg" {
#   source = "terraform-aws-modules/security-group/aws"
#   name        = "${local.resource_name_prefix}-catalogue-sg"
#   use_name_prefix = false
#   description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value

# }

module "sg" {
  source = "git::https://github.com/karunakar2000/k8s_containert_stg-6s.git//terraform_custom_module_sg"
}