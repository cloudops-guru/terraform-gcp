provider "google" {
  project = "gcp-first-411421"
  region  = "us-central1" 
}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["http-server", "bar"]
  labels = {
    environment   = var.environment 
    application   = var.application
    business_unit = var.business_unit
  }

  boot_disk {
    initialize_params {
      image =  var.boot_disk_image
    }
  }
 
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
 
 // metadata_startup_script = "echo hi > /test.txt"
   
}

resource "google_compute_firewall" "http_firewall" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}