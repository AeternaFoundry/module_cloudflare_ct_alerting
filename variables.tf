variable "ct_alertings" {
  description = <<EOT
Map of ct_alertings, attributes below
Required:
    - enabled
    - zone_id
Optional:
    - emails
EOT

  type = map(object({
    enabled = bool
    zone_id = string
    emails  = optional(list(string))
  }))
}

