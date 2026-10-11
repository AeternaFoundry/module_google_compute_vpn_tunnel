variable "compute_vpn_tunnels" {
  description = <<EOT
Map of compute_vpn_tunnels, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - description
    - ike_version
    - labels
    - local_traffic_selector
    - peer_external_gateway
    - peer_external_gateway_interface
    - peer_gcp_gateway
    - peer_ip
    - project
    - region
    - remote_traffic_selector
    - router
    - shared_secret
    - shared_secret_wo
    - shared_secret_wo_version
    - target_vpn_gateway
    - vpn_gateway
    - vpn_gateway_interface
    - cipher_suite (block):
        - phase1 (optional, block):
            - dh (optional)
            - encryption (optional)
            - integrity (optional)
            - prf (optional)
        - phase2 (optional, block):
            - encryption (optional)
            - integrity (optional)
            - pfs (optional)
    - params (block):
        - resource_manager_tags (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                            = string
    deletion_policy                 = optional(string)
    description                     = optional(string)
    ike_version                     = optional(number)
    labels                          = optional(map(string))
    local_traffic_selector          = optional(set(string))
    peer_external_gateway           = optional(string)
    peer_external_gateway_interface = optional(number)
    peer_gcp_gateway                = optional(string)
    peer_ip                         = optional(string)
    project                         = optional(string)
    region                          = optional(string)
    remote_traffic_selector         = optional(set(string))
    router                          = optional(string)
    shared_secret                   = optional(string)
    shared_secret_wo                = optional(string)
    shared_secret_wo_version        = optional(string)
    target_vpn_gateway              = optional(string)
    vpn_gateway                     = optional(string)
    vpn_gateway_interface           = optional(number)
    cipher_suite = optional(object({
      phase1 = optional(object({
        dh         = optional(list(string))
        encryption = optional(list(string))
        integrity  = optional(list(string))
        prf        = optional(list(string))
      }))
      phase2 = optional(object({
        encryption = optional(list(string))
        integrity  = optional(list(string))
        pfs        = optional(list(string))
      }))
    }))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

