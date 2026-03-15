variable "folder_id" {
  description = "Yandex Cloud folder ID"
  type        = string
}

variable "cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "public_ssh_key" {
  description = "Public SSH key for VM access"
  type        = string
}

variable "private_ssh_key" {
  description = "Private SSH key path (for local SSH, Terraform не читает)"
  type        = string
}