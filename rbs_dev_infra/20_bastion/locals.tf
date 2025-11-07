locals {
    ami_id = data.aws_ami.devsecops.id
    bastion_sg_ig = data.aws_ssm_parameter.bastion_sg_ig.value

    common_tags = {
        Project = var.project_name
        Environment = var.environment
        Terraform = true
    }
}