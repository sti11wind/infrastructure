terraform {

  required_providers {

    yandex = {

      source  = "yandex-cloud/yandex"

      version = ">= 0.87.0"

    }

  }

  # Описание бэкенда хранения состояния

  backend "s3" {

    endpoint   = "storage.yandexcloud.net"

    bucket     = "klimachev"

    region     = "ru-central1"

    key        = "terraform.tfstate"


    skip_region_validation      = true

    skip_credentials_validation = true

  }
}



provider "yandex" {

  cloud_id  = "b1g3jddf4nv5e9okle7p"

  folder_id = "b1g4v2q4j0dfegi3pmsc"

  zone      = "ru-central1-a"

}

resource "yandex_compute_instance" "vm-1" {

    name = "chapter5-lesson2-std-014-65"



    # Конфигурация ресурсов:

    # количество процессоров и оперативной памяти

    resources {

        cores  = 2

        memory = 2

    }



    # Загрузочный диск:

    # здесь указывается образ операционной системы

    # для новой виртуальной машины

    boot_disk {

        initialize_params {

            image_id = "fd8qbe6f91srb1vkpn3j"

        }

    }



    # Сетевой интерфейс:

    # нужно указать идентификатор подсети, к которой будет подключена ВМ

    network_interface {

        subnet_id = "e9bedb7iti13lungfmgg"

        nat       = false

    }
metadata = {
user-data = "${file("meta.txt")}"
}

}
output "ip_address" {

    value = yandex_compute_instance.vm-1.network_interface.0.ip_address

} 

