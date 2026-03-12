resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.aws_instance_type
    subnet_id  = var.subnet_id

    vpc_security_group_ids = [aws_security_group.web_sg.id]
    
    tags = {
        name = "Terraform-web-server"
    }
}