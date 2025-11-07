locals {
    common_tags = {
        Project = var.project_name
        Environment = var.environment
        Terraform = true
  }
  resource_name_prefix = "${var.project_name}-${var.environment}" # project name-dev-sg
}

