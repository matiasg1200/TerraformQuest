resource "google_compute_instance" "tf-instance-1" { 
    name         = "tf-instance-1" 
    machine_type = "n1-standard-2" 
    zone         = var.zone
    allow_stopping_for_update = true
    boot_disk { 
      initialize_params { 
        image = "debian-cloud/debian-10" 
      } 
    }
    network_interface { 
      network    = "default"
      #Task6
      #subnetwork = "subnet-01" 
    } 
}

resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = "n1-standard-1"
  zone         = var.zone
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"
    #Task6
    #subnetwork = "subnet-02"
  }
}

#Task4
#resource "google_compute_instance" "tf-instance-" {
#  project      = var.project_id
#  name         = "tf-instance-"
#  machine_type = "n1-standard-2"
#  zone         = var.zone
#  allow_stopping_for_update = true
#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-10"
#    }
#  }
#  network_interface {
#    network = "default"
#  }
#}
