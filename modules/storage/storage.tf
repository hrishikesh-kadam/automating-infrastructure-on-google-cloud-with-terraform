resource "google_storage_bucket" "tf-bucket" {
  name                        = var.tf_bucket_name
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true
}
