resource "yandex_compute_instance" "vm-1" {

    name = "chapter5-lesson2-std-014-65"

    platform_id = var.vm_type

    zone        = var.zone


    # Конфигурация ресурсов:

    # количество процессоров и оперативной памяти

    resources {

        cores  = var.core

        memory = var.memory

    }

    scheduling_policy {

      preemptible = var.preemptible

    }


    # Загрузочный диск:

    # здесь указывается образ операционной системы

    # для новой виртуальной машины

    boot_disk {

        initialize_params {

            image_id = var.disk_image_id
    
            size     = var.boot_disk_size

        }

    }
    network_interface {

        subnet_id = var.subnet_id

        nat       = var.nat

    }

  metadata = {
  user-data = "${file("meta.txt")}"
}
}
