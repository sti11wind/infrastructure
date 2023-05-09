  output "yandex_vpc_network" {

    description = "Yandex.Cloud network map"

    value       = data.yandex_vpc_network.default

}
  locals {
    zone_subnet_id = [for each in data.yandex_vpc_subnet.default : each.subnet_id if each.zone == var.vpc_subnet_zone]

}
output "yandex_vpc_subnet" {

    description = "Yandex.Cloud Subnets id"

    value       = local.zone_subnet_id[0]


}

