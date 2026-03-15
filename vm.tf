# Получаем последний образ Ubuntu 20.04 LTS
data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2004-lts"
}

# NAT instance
resource "yandex_compute_instance" "nat_instance" {
  name = "nat-instance"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd80mrhj8fl2oe87o4e1"  # по заданию
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.public_subnet.id
    ip_address = "192.168.10.254"
    nat        = true
  }

  metadata = {
    ssh-keys = "ubuntu:${var.public_ssh_key}"
  }
}

# Public VM (bastion)
resource "yandex_compute_instance" "public_vm" {
  name = "public-vm"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.public_subnet.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${var.public_ssh_key}"
  }
}

# Private VM
resource "yandex_compute_instance" "private_vm" {
  name = "private-vm"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.private_subnet.id
    nat       = false
  }

  metadata = {
    ssh-keys = "ubuntu:${var.public_ssh_key}"
  }
}