provider "google" {

}

provider "google-beta" {

access_token = var.access_token

}


resource "google_filestore_instance" "instance" { 
  provider = "google-beta"  
  name = "test-instance"
  location = "us-central1-b"
  tier = "PREMIUM"

  file_shares {
    capacity_gb = 2660
    name        = "share1"
  }

  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
    #connect_mode = "PRIVATE_SERVICE_ACCESS"
  }
}