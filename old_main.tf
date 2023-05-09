

  # Описание бэкенда хранения состояния

  backend "s3" {

    endpoint   = "storage.yandexcloud.net"

    bucket     = "klimachev"

    region     = "ru-central1"

    key        = "terraform.tfstate"


    skip_region_validation      = true

    skip_credentials_validation = true

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

