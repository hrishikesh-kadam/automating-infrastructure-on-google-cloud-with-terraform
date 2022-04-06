terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.45"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "instances" {
  source                = "./modules/instances"
  instance_machine_type = var.instance_machine_type
  network_name          = var.network_name
  subnet_01_name        = var.subnet_01_name
  subnet_02_name        = var.subnet_02_name
}

module "storage" {
  source         = "./modules/storage"
  tf_bucket_name = var.tf_bucket_name
}

module "tf-vpc" {
  source       = "terraform-google-modules/network/google"
  version      = "3.4.0"
  network_name = var.network_name
  project_id   = var.project_id
  subnets = [
    {
      subnet_name   = var.subnet_01_name
      subnet_ip     = "10.10.10.0/24"
      subnet_region = var.region
    },
    {
      subnet_name   = var.subnet_02_name
      subnet_ip     = "10.10.20.0/24"
      subnet_region = var.region
    }
  ]
}

terraform {
  backend "gcs" {
    prefix = "terraform/state"
  }
}
