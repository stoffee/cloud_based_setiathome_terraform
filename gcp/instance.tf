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

  #metadata_startup_script = "echo hello_umm_hello > /test.txt"
  metadata_startup_script = <<SCRIPT
    sudo apt update && sudo apt install -y unzip jq boinc-client dnsutils
    sleep 12
    systemctl restart boinc-client
    sleep 12
    sudo boinccmd --project_attach http://setiathome.berkeley.edu 51f200480b1473b1b972f89b051a31d3
    sleep 12
    systemctl restart boinc-client
  SCRIPT

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}