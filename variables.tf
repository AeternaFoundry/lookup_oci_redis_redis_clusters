variable "redis_redis_clusters_lookup" {
  description = <<EOT
Map of redis_redis_clusters_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

