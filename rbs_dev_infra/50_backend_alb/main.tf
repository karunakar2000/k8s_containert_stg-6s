resource "aws_lb" "test" {
  name               = "${local.resource_name_prefix}-backend-alb" # RBS-DEV-backend-alb
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend-alb-sg_sg_id]
  subnets            = local.public_subnet_ids

  enable_deletion_protection = true

  tags = merge(
    local.common_tags,
    {
      Name = "${local.resource_name_prefix}-backend-alb"
    }
  )
