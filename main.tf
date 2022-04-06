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
}

module "storage" {
  source         = "./modules/storage"
  tf_bucket_name = var.tf_bucket_name
}

module "tf-vpc" {
  source       = "terraform-google-modules/network/google"
  version      = "3.4.0"
  network_name = "tf-vpc-987869"
  project_id   = var.project_id
  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-02"
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
