  variable "token" {

    type        = string
    sensitive = true
    nullable = false
}


  variable "cloud_id" {
    type        = string
    default     = "b1g3jddf4nv5e9okle7p"
    nullable = false

}

  variable "folder_id" {
    type        = string
    default     = "b1g4v2q4j0dfegi3pmsc"
    nullable = false

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


