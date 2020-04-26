provider "google" {
  credentials = file("account.json")
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

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
  }

 network_interface {
  network = "default"

  access_config {}
  }
}