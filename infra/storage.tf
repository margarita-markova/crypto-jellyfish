resource "google_storage_bucket" "bucket" {
  name          = "tfstate-storage"
  location      = "US"
  force_destroy = true
  versioning    = true
}
