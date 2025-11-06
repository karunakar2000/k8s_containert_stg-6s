locals {
    common_tags = {
        Project =   var.project_name
        Environment =  var.environment
        Terraform   =  true
  }
    resource_name_prefix = "${var.project_name}-${var.environment}-sg" # project name-dev-sg

}