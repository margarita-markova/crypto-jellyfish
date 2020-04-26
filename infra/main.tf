provider "google" {
  project     = "cryptojellyfish"
  region      = "us-central1"
}

resource "random_id" "instance_id" {
 byte_length = 8
}

resource "google_compute_instance" "default" {
 name         = "geth-master-${random_id.instance_id.hex}"
 machine_type = "f1-micro"
 zone         = "us-central1-a"

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
}