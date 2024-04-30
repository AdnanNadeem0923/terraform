output "ip_addresses" {
  value = {
    internal = google_compute_instance.vm_instance.network_interface.0.network_ip
    external = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
  }
}
