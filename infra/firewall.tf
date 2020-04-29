# resource "google_compute_firewall" "enable_eth" {
#   name    = "enable-ethereum-net"
#   network = google_compute_network.default.name

#   allow {
#     protocol = "udp"
#     ports    = ["30303"]
#   }

#   allow {
#     protocol = "tcp"
#     ports    = ["30303"]
#   }

#   source_tags = ["eth"]
# }