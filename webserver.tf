resource "google_compute_instance" "web_server" {
  name         = "web-server"
  machine_type = "e2-medium"
  tags         = ["http"]
  project = var.gcp_project
  zone = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # Ephemeral public IP
    }
  }

  metadata_startup_script = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y nginx
              service nginx start
              EOF

  service_account {
    scopes = ["cloud-platform"]
  }
}