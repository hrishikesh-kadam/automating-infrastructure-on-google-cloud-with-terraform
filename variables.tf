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

variable "tf_bucket_name" {
  description = "TF Bucket Name"
  type        = string
  default     = "tf-bucket-44528"
}

variable "instance_machine_type" {
  description = "Instance Machine Type"
  type        = string
  default     = "n1-standard-2"
}

variable "network_name" {
  description = "Network Name"
  type        = string
  default     = "tf-vpc-987869"
}

variable "subnet_01_name" {
  description = "Subnet 01 Name"
  type        = string
  default     = "subnet-01"
}

variable "subnet_02_name" {
  description = "Subnet 02 Name"
  type        = string
  default     = "subnet-02"
}
