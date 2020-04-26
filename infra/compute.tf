resource "google_compute_instance" "slave" {
  count = var.slave_count
  name         = "geth-slave-${count.index}"
  machine_type = "f1-micro"

  tags = ["slave"]

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