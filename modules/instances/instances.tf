resource "google_compute_instance" "tf-instance-1" {
  name         = "tf-instance-1"
  machine_type = var.instance_machine_type
  boot_disk {
    initialize_params {
      image = var.instance_boot_image
    }
  }
  network_interface {
    network    = var.network_name
    subnetwork = var.subnet_01_name
    access_config {
    }
  }
  metadata = {
    "startup-script" = <<-EOT
            #!/bin/bash
        EOT
  }
  allow_stopping_for_update = true
}

resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = var.instance_machine_type
  boot_disk {
    initialize_params {
      image = var.instance_boot_image
    }
  }
  network_interface {
    network    = var.network_name
    subnetwork = var.subnet_02_name
    access_config {
    }
  }
  metadata = {
    "startup-script" = <<-EOT
            #!/bin/bash
        EOT
  }
  allow_stopping_for_update = true
}
