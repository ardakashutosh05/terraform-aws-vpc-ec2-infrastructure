module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"

  subnet_id         = module.vpc.public_subnet_id
  vpc_id            = module.vpc.vpc_id
  ami               = var.ami
  aws_instance_type = var.aws_instance_type
}


# subnet_id = var.aws_subnet_id
#   vpc_id    = var.vpc_id
#   ami       = var.ami
# variable.tf is make in the module becose the vale is store in module 