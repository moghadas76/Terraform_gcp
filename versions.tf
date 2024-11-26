terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
   #   project     = "qwiklabs-gcp-00-19da10fa3ce3"
  #region      = "europe-west1-b"
  #zone        = "your-zone"
  #credentials = file("qwiklabs-gcp-00-19da10fa3ce3-f239d739c526.json")
    }
  }
  
  
  # Configure backend for state storage
    backend "gcs" {
    bucket = "artifacts_for_querbes_state"
    prefix = "terraform/state"
    }
}