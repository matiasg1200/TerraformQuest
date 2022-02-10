resource "google_storage_bucket" "tf-bucket-874969" { 
    name = "tf-bucket-874969" 
    location = "US" 
    force_destroy = true 
    uniform_bucket_level_access = true 
}