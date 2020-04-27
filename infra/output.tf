output "id_geth_master" {
  value = google_compute_instance.default.name
}

output "ip_geth_master" {
  value = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
}

output "id_geth_slave" {
  value = google_compute_instance.slave.*.name
}

output "ip_geth_slave" {
  value = google_compute_instance.slave.*.network_interface.0.access_config.0.nat_ip
}