resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = var.name
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.network.id
}