resource "aws_lb" "backend-alb" {
  name               = "${local.resource_name_prefix}-backend-alb" # RBS-DEV-backend-alb
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend-alb-sg_sg_id]
  subnets            = local.private_subnet_ids

  enable_deletion_protection = true

  tags = merge(
    local.common_tags,
    {
      Name = "${local.resource_name_prefix}-backend-alb"
    }
  )
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.backend-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "From Backend ALB HTTP"
      status_code  = "200"
    }
  }
}

















