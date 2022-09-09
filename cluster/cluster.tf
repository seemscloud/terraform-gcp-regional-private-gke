data "google_compute_zones" "zones" {
  project = var.project
  region  = var.region
}

resource "google_container_cluster" "aaa_gke_aaa" {
  name = var.cluster_name

  location                 = var.region
  node_locations           = data.google_compute_zones.zones.names
  min_master_version       = var.cluster_min_version
  network                  = google_compute_network.network.id
  subnetwork               = google_compute_subnetwork.subnetwork.id
  initial_node_count       = var.cluster_init
  remove_default_node_pool = false

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = v
    }
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = var.cluster_master_cidr
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  addons_config {
    http_load_balancing {
      disabled = false
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  vertical_pod_autoscaling {
    enabled = true
  }

  cluster_autoscaling {
    enabled = true

    resource_limits {
      minimum       = 10
      maximum       = 50
      resource_type = "cpu"
    }

    resource_limits {
      minimum       = 10
      maximum       = 50
      resource_type = "memory"
    }
  }

  workload_identity_config {
    workload_pool = "${var.project}.svc.id.goog"
  }

  depends_on = [
    google_compute_network.network,
    google_compute_subnetwork.subnetwork,
    google_service_account.aaa_gke_aaa
  ]
}
