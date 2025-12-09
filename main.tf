provider "google" {
  project = "smooth-reason-478206-v1"   # Replace with your real GCP Project ID
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "jenkins-created-vm"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Assigns an ephemeral public IP
    }
  }
}
