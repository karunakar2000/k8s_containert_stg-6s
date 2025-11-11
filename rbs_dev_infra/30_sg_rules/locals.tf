locals {
    backend-alb-sg_sg_id = data.aws_ssm_parameter.backend-alb-sg_sg_id.value
    bastion-sg_sg_id = data.aws_ssm_parameter.bastion-sg_sg_id.value
}