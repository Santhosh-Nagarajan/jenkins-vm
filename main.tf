resource "google_compute_instance" "example" {
  name         = var.instance-name
  machine_type = var.machine-type
  zone         = "<your-zone>"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      size   = var.size
      image  = var.image-name
      labels = var.labels
    }
  }

  network_interface {
    network    = var.network
    subnetwork = false
  }

  metadata_startup_script = file("script.sh")

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "label-471@playground-s-11-deec77ca.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}
resource "google_compute_subnetwork" "my_subnet" {
  name          = var.subnet-name
  network       = google_compute_instance.example.id
  ip_cidr_range = "10.0.0.0/24"
  region        = var.region
}

# Create HTTP firewall rule
resource "google_compute_firewall" "http_firewall" {
  name    = "http-firewall"
  network = google_compute_instance.example.self_link

  allow {
    protocol = "tcp"
    ports    = ["8080,443"]
  }

  source_ranges = var.firewal-source-range
}

# Create SSH firewall rule
resource "google_compute_firewall" "ssh_firewall" {
  name    = "ssh-firewall"
  network = google_compute_instance.example.id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}






