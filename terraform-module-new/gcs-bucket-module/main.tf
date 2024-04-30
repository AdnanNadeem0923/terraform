resource "google_storage_bucket" "website-bucket" {
  name     = var.bucket_name
  location = var.bucket_location
  website {
    main_page_suffix = "index.html"
    not_found_page   = "error.html"
  }
  uniform_bucket_level_access = true
  cors {
    max_age_seconds = 3600
    method          = ["GET", "HEAD", "PUT"]
    origin          = ["*"]
    response_header = ["Content-Type"]
  }

}

resource "google_storage_bucket_object" "index_html" {
    name = "index.html"
    bucket = google_storage_bucket.website-bucket.name
    content = var.index_html_content
    content_type = "text/html"
  
}

resource "google_storage_bucket_object" "error_html" {
    name = "error.html"
    bucket = google_storage_bucket.website-bucket.name
    content = var.error_html_content
    content_type = "text/html"
  
}

resource "google_storage_bucket_iam_member" "website_bucket_public" {
  bucket = google_storage_bucket.website-bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
