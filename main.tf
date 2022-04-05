terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.15.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "instances" {
  source = "./modules/instances"
}

module "storage" {
  source         = "./modules/storage"
  tf_bucket_name = var.tf_bucket_name
}

terraform {
  backend "gcs" {
    prefix = "terraform/state"
  }
}
