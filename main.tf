# Create EC2 instance

resource "aws_instance" "EC2" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
}
