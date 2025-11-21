module "vpc" {
    source = "git::https://github.com/karunakar2000/k8s_containert_stg-5s.git//terraform_vpc_module"
    # VPC
    vpc_cidr = var.cidr_block
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tag

    # Public Subnets 
    public_subnet_cidrs = var.public_subnet_cidrs

    # Private Subnets 
    private_subnet_cidrs = var.private_subnet_cidrs

    # Database Subnets 
    database_subnet_cidrs = var.database_subnet_cidrs
    
    # If user dont need vpc peering 
    if_peering_require = false
}







