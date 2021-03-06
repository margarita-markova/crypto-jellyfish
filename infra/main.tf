provider "google" {
  # credentials = file("account.json")
  project     = "cryptojellyfish"
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_instance" "default" {
 name         = "geth-master"
 machine_type = "n1-standard-1"

 tags = ["master"]

 boot_disk {
   initialize_params {
     image = "ubuntu-os-cloud/ubuntu-1804-lts"
   }
  }

 network_interface {
  network = "default"

  access_config {}
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${var.ssh_public_key} \n${var.auto_ssh_user}:${var.auto_ssh_public_key}"
  }
}

