resource "aws_instance" "mongodb" {
  ami                    = local.ami_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [local.mongodb_sg_id]
  subnet_id = local.database_subnet_ids
  
  tags = merge(
    local.common_tags,
    {
      Name = "${local.resource_name_prefix}-mongodb" # RBS-DEV-mongodb
    }
  )

}

resource "terraform_data" "bootstrap" {
  triggers_replace = [
    aws_instance.web.id,
    aws_instance.database.id
  ]

  provisioner "local-exec" {
    command = "bootstrap-hosts.sh"
  }
}