provider "google" {
  project     = "summit-demos-463020"
  region      = "us-east1"
}

resource "google_compute_instance" "vm-gremlin" {
  name         = "chaos-gremln"
  machine_type = "n2-standard-2"
  zone         = "us-east1-b"

  shielded_instance_config {
    enable_secure_boot     = true
    enable_vtpm            = true
    enable_integrity_monitoring = true
  }

  tags = ["golden", "chaos"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-10"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = <<EOF
    echo "Hello, World!" > test.txt
  EOF
}