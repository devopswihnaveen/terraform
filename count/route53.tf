resource "aws_route53_record" "personal" {
    count = length(var.instance)
    zone_id = "$(var.zone_id)"
    name = "${var.instance[count.index]}.${var.domain_name}" #user.amaravathi.today
    type = "A"
    ttl = 1
    records = [aws_instanceterraform[count.index].private_ip]
    allow_overwrite = true
}