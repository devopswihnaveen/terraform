variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z02684311371WMKENMQPX"
}

variable "domain_name" {
    default = "amaravathi.today"
}

variable "fruits" {
    type = list(string)
    default = ["apple", "banana", "orange", "apple"]
}