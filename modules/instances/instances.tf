resource "google_compute_instance" "tf-instance-1" {
  project      = var.project_id
  name         = "tf-instance-1"
  machine_type = "n1-standard-1"
  zone         = var.zone
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "tf-vpc-587726"
    access_config {
      subnet = "subnet-01"
    }
  }
}

resource "google_compute_instance" "tf-instance-2" {
  project      = var.project_id
  name         = "tf-instance-2"
  machine_type = "n1-standard-1"
  zone         = var.zone
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "tf-vpc-587726"
    subnet = "subnet-02"
    access_config {
    }
  }
}

#Task4
#resource "google_compute_instance" "tf-instance-" {
#  project      = var.project_id
#  name         = "tf-instance-2"
#  machine_type = "n1-standard-2"
#  zone         = var.zone
#  metadata_startup_script = <<-EOT
#        #!/bin/bash
#    EOT
#  allow_stopping_for_update = true
#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-10"
#    }
#  }
#  network_interface {
#    network = "default"
#    access_config {
#    }
#  }
#}