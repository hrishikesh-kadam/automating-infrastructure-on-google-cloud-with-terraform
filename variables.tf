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
