# Create new storage bucket in the US
# location with Standard Storage

resource "google_storage_bucket" "static" {
project     = "qwiklabs-gcp-00-19da10fa3ce3"
 name          = "artifacts_for_querbes_state"
 location      = "europe-west1"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

# Upload a text file as an object
# to the storage bucket

resource "google_storage_bucket_object" "default" {
 name         = "artifacts_for_querbes"
 source       = "sample.txt"
 content_type = "text/plain"
 bucket       = google_storage_bucket.static.id
}