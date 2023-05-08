output "network" {

    value = [
      for i in yandex_compute_instance.vm-1[*]:
      join(": ", [i.hostname, i.name, i.network_interface.0.ip_address, i.network_interface.0.nat_ip_address, ])
      ]
}


  output "zone" {
    value = var.zone
}

