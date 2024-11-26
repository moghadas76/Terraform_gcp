# Create new storage bucket in the US
# location with Standard Storage

resource "google_storage_bucket" "static" {
 name          = "state"
 location      = "europe-west1-b"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

# Upload a text file as an object
# to the storage bucket

resource "google_storage_bucket_object" "default" {
 name         = "artifacts"
 source       = "sample.txt"
 content_type = "text/plain"
 bucket       = google_storage_bucket.static.id
}