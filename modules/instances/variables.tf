variable "region" {
  description = "Default Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Default Zone"
  type        = string
  default     = "us-central1-a"
}

variable "project_id" {
  description = "Project ID"
  type        = string
  default     = "qwiklabs-gcp-01-2ce18408c671"
}

variable "instance_machine_type" {
  description = "Instance Machine Type"
  type        = string
  default     = "n1-standard-1"
}

variable "instance_boot_image" {
  description = "Instance Boot Image"
  type        = string
  default     = "debian-cloud/debian-10"
}

variable "network_name" {
  description = "Network Name"
  type        = string
  default     = "default"
}

variable "subnet_01_name" {
  description = "Subnet 01 Name"
  type        = string
  default     = "default"
}

variable "subnet_02_name" {
  description = "Subnet 02 Name"
  type        = string
  default     = "default"
}
