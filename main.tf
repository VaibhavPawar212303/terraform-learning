terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = "test-automation-445606"
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = file("/home/pawarvaibhav_vppv/.config/gcloud/application_default_credentials.json")
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
