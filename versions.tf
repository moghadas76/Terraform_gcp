terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  
  # Configure backend for state storage
#  backend "gcs" {
#    bucket = "my-terraform-state-bucket"
#    prefix = "terraform/state"
#  }
}