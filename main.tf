terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.3.0"
    }
  }
}
// Configure the Google Cloud provider
provider "google" {
  credentials = var.GCP_Terraform_SA
  project     = "devops-test-361018"
  region      = "asia-southeast2"
}

# resource "google_container_cluster" "primary" {
#   name             = "ws-sby-cluster"
#   location         = "asia-southeast2"
#   enable_autopilot = true
#   vertical_pod_autoscaling {
#     enabled = true
#   }
# }

/*
resource "google_compute_instance" "main" {
  name         = "richie-test2"
  machine_type = "e2-micro"
  zone         = "asia-southeast2-a"

  tags         = ["rdp","test-richie", "http", "https"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7-v20230306"
      size  = 50
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"

    access_config {
        // Ephemeral public IP
    }
  }

}
*/

