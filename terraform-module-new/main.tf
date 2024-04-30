provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "vpc" {
  source                  = "terraform-google-modules/network/google//modules/vpc"
  project_id              = var.project
  network_name            = var.network_name
  shared_vpc_host         = false
  auto_create_subnetworks = var.auto_create_subnetworks
}

module "vm_compute_instance" {
  source              = "terraform-google-modules/vm/google//modules/compute_instance"
  instance_template   = var.instance_template
  num_instances       = "2"
  add_hostname_suffix = true
}

module "website_bucket" {
  bucket_name        = "unique-0923-bucket"
  source             = "./modules/gcs-bucket-website"
  index_html_content = <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My Website</title>
</head>
<body>
    <h1>Welcome to My Website</h1>
    <p>This is the main page of my website.</p>
</body>
</html>
EOF
  error_html_content = <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Page Not Found</title>
</head>
<body>
    <h1>404 - Page Not Found</h1>
    <p>The requested page could not be found.</p>
</body>
</html>
EOF

}