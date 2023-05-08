  variable "resource_name" {

    type        = string

    default     = "chapter5-lesson2-std-014-65"
}

  variable "vm_type" {

    type        = string

    default     = "standard-v1"
}

 variable "core" {
    type        = number

    default     = "2"
}


  variable "memory" {

    type        = number

    default     = "2"
}


  variable "preemptible" {

    type        = bool

    default     = "true"
}


  variable "boot_disk_size" {

    type        = number

    default     = "30"
}



  variable "nat" {

    type        = bool

    default     = true
}

  variable "subnet_id" {

    type        = string

    default     = "e9bedb7iti13lungfmgg"
}


  variable "zone" {

    type        = string

    default     = "ru-central1-a"
    nullable = false
}


  variable "disk_image_id" {

    type        = string

    default     = "fd8qbe6f91srb1vkpn3j"
}








