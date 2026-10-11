resource "google_compute_vpn_tunnel" "compute_vpn_tunnels" {
  for_each = var.compute_vpn_tunnels

  name                            = each.value.name
  deletion_policy                 = each.value.deletion_policy
  description                     = each.value.description
  ike_version                     = each.value.ike_version
  labels                          = each.value.labels
  local_traffic_selector          = each.value.local_traffic_selector
  peer_external_gateway           = each.value.peer_external_gateway
  peer_external_gateway_interface = each.value.peer_external_gateway_interface
  peer_gcp_gateway                = each.value.peer_gcp_gateway
  peer_ip                         = each.value.peer_ip
  project                         = each.value.project
  region                          = each.value.region
  remote_traffic_selector         = each.value.remote_traffic_selector
  router                          = each.value.router
  shared_secret                   = each.value.shared_secret
  shared_secret_wo                = each.value.shared_secret_wo
  shared_secret_wo_version        = each.value.shared_secret_wo_version
  target_vpn_gateway              = each.value.target_vpn_gateway
  vpn_gateway                     = each.value.vpn_gateway
  vpn_gateway_interface           = each.value.vpn_gateway_interface

  dynamic "cipher_suite" {
    for_each = each.value.cipher_suite != null ? [each.value.cipher_suite] : []
    content {
      dynamic "phase1" {
        for_each = cipher_suite.value.phase1 != null ? [cipher_suite.value.phase1] : []
        content {
          dh         = phase1.value.dh
          encryption = phase1.value.encryption
          integrity  = phase1.value.integrity
          prf        = phase1.value.prf
        }
      }
      dynamic "phase2" {
        for_each = cipher_suite.value.phase2 != null ? [cipher_suite.value.phase2] : []
        content {
          encryption = phase2.value.encryption
          integrity  = phase2.value.integrity
          pfs        = phase2.value.pfs
        }
      }
    }
  }

  dynamic "params" {
    for_each = each.value.params != null ? [each.value.params] : []
    content {
      resource_manager_tags = params.value.resource_manager_tags
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

