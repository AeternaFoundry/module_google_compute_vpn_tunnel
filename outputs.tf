output "compute_vpn_tunnels_id" {
  description = "Map of id values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no id are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_vpn_tunnels_cipher_suite" {
  description = "Map of cipher_suite values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no cipher_suite are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => one(v.cipher_suite) if v.cipher_suite != null && length(v.cipher_suite) > 0 }
}
output "compute_vpn_tunnels_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_vpn_tunnels_deletion_policy" {
  description = "Map of deletion_policy values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_vpn_tunnels_description" {
  description = "Map of description values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no description are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_vpn_tunnels_detailed_status" {
  description = "Map of detailed_status values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no detailed_status are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.detailed_status if v.detailed_status != null && length(v.detailed_status) > 0 }
}
output "compute_vpn_tunnels_effective_labels" {
  description = "Map of effective_labels values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no effective_labels are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "compute_vpn_tunnels_ike_version" {
  description = "Map of ike_version values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no ike_version are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.ike_version if v.ike_version != null }
}
output "compute_vpn_tunnels_label_fingerprint" {
  description = "Map of label_fingerprint values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no label_fingerprint are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.label_fingerprint if v.label_fingerprint != null && length(v.label_fingerprint) > 0 }
}
output "compute_vpn_tunnels_labels" {
  description = "Map of labels values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no labels are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "compute_vpn_tunnels_local_traffic_selector" {
  description = "Map of local_traffic_selector values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no local_traffic_selector are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.local_traffic_selector if v.local_traffic_selector != null && length(v.local_traffic_selector) > 0 }
}
output "compute_vpn_tunnels_name" {
  description = "Map of name values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no name are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_vpn_tunnels_params" {
  description = "Map of params values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no params are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_vpn_tunnels_peer_external_gateway" {
  description = "Map of peer_external_gateway values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no peer_external_gateway are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.peer_external_gateway if v.peer_external_gateway != null && length(v.peer_external_gateway) > 0 }
}
output "compute_vpn_tunnels_peer_external_gateway_interface" {
  description = "Map of peer_external_gateway_interface values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no peer_external_gateway_interface are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.peer_external_gateway_interface if v.peer_external_gateway_interface != null }
}
output "compute_vpn_tunnels_peer_gcp_gateway" {
  description = "Map of peer_gcp_gateway values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no peer_gcp_gateway are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.peer_gcp_gateway if v.peer_gcp_gateway != null && length(v.peer_gcp_gateway) > 0 }
}
output "compute_vpn_tunnels_peer_ip" {
  description = "Map of peer_ip values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no peer_ip are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.peer_ip if v.peer_ip != null && length(v.peer_ip) > 0 }
}
output "compute_vpn_tunnels_project" {
  description = "Map of project values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no project are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_vpn_tunnels_region" {
  description = "Map of region values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no region are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_vpn_tunnels_remote_traffic_selector" {
  description = "Map of remote_traffic_selector values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no remote_traffic_selector are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.remote_traffic_selector if v.remote_traffic_selector != null && length(v.remote_traffic_selector) > 0 }
}
output "compute_vpn_tunnels_router" {
  description = "Map of router values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no router are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.router if v.router != null && length(v.router) > 0 }
}
output "compute_vpn_tunnels_self_link" {
  description = "Map of self_link values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no self_link are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_vpn_tunnels_shared_secret" {
  description = "Map of shared_secret values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no shared_secret are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.shared_secret if v.shared_secret != null && length(v.shared_secret) > 0 }
  sensitive   = true
}
output "compute_vpn_tunnels_shared_secret_hash" {
  description = "Map of shared_secret_hash values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no shared_secret_hash are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.shared_secret_hash if v.shared_secret_hash != null && length(v.shared_secret_hash) > 0 }
}
output "compute_vpn_tunnels_shared_secret_wo_version" {
  description = "Map of shared_secret_wo_version values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no shared_secret_wo_version are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.shared_secret_wo_version if v.shared_secret_wo_version != null && length(v.shared_secret_wo_version) > 0 }
}
output "compute_vpn_tunnels_target_vpn_gateway" {
  description = "Map of target_vpn_gateway values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no target_vpn_gateway are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.target_vpn_gateway if v.target_vpn_gateway != null && length(v.target_vpn_gateway) > 0 }
}
output "compute_vpn_tunnels_terraform_labels" {
  description = "Map of terraform_labels values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no terraform_labels are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "compute_vpn_tunnels_tunnel_id" {
  description = "Map of tunnel_id values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no tunnel_id are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.tunnel_id if v.tunnel_id != null && length(v.tunnel_id) > 0 }
}
output "compute_vpn_tunnels_vpn_gateway" {
  description = "Map of vpn_gateway values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no vpn_gateway are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.vpn_gateway if v.vpn_gateway != null && length(v.vpn_gateway) > 0 }
}
output "compute_vpn_tunnels_vpn_gateway_interface" {
  description = "Map of vpn_gateway_interface values across all compute_vpn_tunnels, keyed the same as var.compute_vpn_tunnels except keys with no vpn_gateway_interface are omitted"
  value       = { for k, v in google_compute_vpn_tunnel.compute_vpn_tunnels : k => v.vpn_gateway_interface if v.vpn_gateway_interface != null }
}

