# Map
/* variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
    }
} */

# This should be converted into set
variable "instances" {
    type = list
    default = ["mongodb", "redis", "frontend"]
}

variable "zone_id" {
    default = "Z02684311371WMKENMQPX"
}

variable "domain_name" {
    default = "amaravathi.today"
}