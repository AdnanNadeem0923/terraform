variable "bucket_name" {
    default = "static-website-bucket-0923"
}

variable "bucket_location" {
    default = "us-central1"
  
}

variable "index_html_content" {
  description = "Content of the index.html file. This should contain the HTML content for the main page of the website."
}

variable "error_html_content" {
  description = "Content of the error.html file. This should contain the HTML content for the error page of the website."
}