  variable "token" {

    type        = string
    
    default     = "t1.9euelZqLlZLJj4qZl5nPmZ3Nj5Scm-3rnpWalIubip7Kj4_NlpyTxprPz5Pl8_c7XT9d-e9mFR0v_N3z9zNPP13572YVHS_8.UxzpWOXX-DvhqP70n2kHY76rAaoXjhXec6WwZp2-ubw35376kcc-Cst4wCG1EJ53tK2C_oWgNG7DBheUCXynAA"
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


