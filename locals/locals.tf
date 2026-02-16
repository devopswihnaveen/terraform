locals{
    instance_type = "t3.micro"
    common_name = "${var.project}-${var.environment}" # personal-dev
    ami_id = data.aws_ami.naveencloud.id
    ec2_tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-local-demo"
      }
    )
}