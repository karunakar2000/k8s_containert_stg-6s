# Using open source module:

# module "catalogue_sg" {
#   source = "terraform-aws-modules/security-group/aws"
#   name        = "${local.resource_name_prefix}-catalogue-sg"
#   use_name_prefix = false
#   description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value

# }

module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/karunakar2000/k8s_containert_stg-6s.git//terraform_custom_module_sg"
  project_name  = var.project_name
  environment   = var.environment
  sg_name = var.sg_names[count.index]
  sg_description  = "Created For ${var.sg_names[count.index]}"
  vpc_id  = local.vpc_id

}

# # Frontend servers accepting from frontend ALB 
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   security_group_id = module.sg[9].sg_id # frontend SG id
#   source_security_group_id = module.sg[11].sg_id # frontend LB SG id
#   type              = "ingress"
#   from_port         = 80
#   protocol          = "tcp"
#   to_port           = 80
# }