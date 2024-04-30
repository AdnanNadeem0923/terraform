output "network" {
  description = "The VPC resource being created"
  value       = module.vpc.network
}

output "network_id" {
  description = "The ID of the VPC being created"
  value       = module.vpc.network_id
}

output "network_name" {
  description = "The name of the VPC being created"
  value       = module.vpc.network_name
}

output "network_self_link" {
  description = "The URI of the VPC being created"
  value       = module.vpc.network_self_link
}

output "project_id" {
  description = "VPC project id"
  value       = var.project
}

# output "subnet_ips" {
#   description = "IP addresses of the subnets created"
#   value       = module.vpc.subnet_ips
# }

# output "instance_ips" {
#   description = "IP addresses of the instances created"
#   value       = [for instance in module.vm_compute_instance: instance.network_interface.0.access_config.0.assigned_nat_ip]
# }



