
resource "google_compute_network" "vpc_network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = false
  project = var.gcp_project
}

resource "google_compute_subnetwork" "subnet" {
  name          = "europe-west"
  ip_cidr_range = var.cidr_block
  network       = google_compute_network.vpc_network.id
  region        = var.region
  project = var.gcp_project
}
