resource "google_compute_instance" "default" {
  name         = "setiathome"
  machine_type = var.instance_type
  zone         = var.gcp_zone

  tags = ["mission", "seti"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    Mission = "Seti"
  }

  metadata_startup_script = "echo hello_umm_hello > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}