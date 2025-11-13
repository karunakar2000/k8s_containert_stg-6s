# Frontend servers accepting from frontend ALB 
resource "aws_security_group_rule" "backend_alb_bastion" {
  security_group_id = local.backend-alb-sg_sg_id
  source_security_group_id = local.bastion-sg_sg_id
  type              = "ingress"
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}


# From Laptop to Bastion VM
resource "aws_security_group_rule" "bastion_laptop" {
  security_group_id = local.bastion-sg_sg_id
  cidr_blocks       = ["0.0.0.0/0"]
  type              = "ingress"
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}


# Mongodb accepting Bastion
resource "aws_security_group_rule" "mongodb_bastion" {
  security_group_id = local.mongodb-sg_sg_id
  source_security_group_id  = local.local.bastion-sg_sg_id
  type              = "ingress"
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
