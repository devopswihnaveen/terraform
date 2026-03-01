module "ec2" {
    source = "git::https://github.com/devopswihnaveen/terraform.git//terraform-aws-instance?ref=main"
    project = var.project_name
    environment = var.env
    ami_id = data.aws_ami.joindevops.id
    sg_ids = var.sg_ids
    instance_type = "t3.large"
    tags = {
        Name = "${var.project_name}-${var.env}-${var.component}"
        Component = var.component
    }
}