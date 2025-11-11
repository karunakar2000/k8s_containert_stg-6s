# # Frontend servers accepting from frontend ALB 
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   security_group_id = module.sg[9].sg_id # frontend SG id
#   source_security_group_id = module.sg[11].sg_id # frontend LB SG id
#   type              = "ingress"
#   from_port         = 80
#   protocol          = "tcp"
#   to_port           = 80
# }






