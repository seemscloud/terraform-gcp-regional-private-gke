resource "google_compute_subnetwork" "subnetwork" {
  name          = var.cluster_name
  ip_cidr_range = var.cluster_cidr
  region        = var.region
  network       = google_compute_network.network.id
}

resource "google_compute_subnetwork" "bastion" {
  name          = var.bast
  ip_cidr_range = var.cluster_cidr
  region        = var.region
  network       = google_compute_network.network.id
}