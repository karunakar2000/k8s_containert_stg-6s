# Frontend servers accepting from frontend ALB 
resource "aws_security_group_rule" "backend_alb_bastion" {
  security_group_id = local.backend-alb-sg_sg_id
  source_security_group_id = local.bastion-sg_sg_id
  type              = "ingress"
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}
