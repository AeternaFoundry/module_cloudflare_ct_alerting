output "ct_alertings_id" {
  description = "Map of id values across all ct_alertings, keyed the same as var.ct_alertings except keys with no id are omitted"
  value       = { for k, v in cloudflare_ct_alerting.ct_alertings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ct_alertings_emails" {
  description = "Map of emails values across all ct_alertings, keyed the same as var.ct_alertings except keys with no emails are omitted"
  value       = { for k, v in cloudflare_ct_alerting.ct_alertings : k => v.emails if v.emails != null && length(v.emails) > 0 }
}
output "ct_alertings_enabled" {
  description = "Map of enabled values across all ct_alertings, keyed the same as var.ct_alertings except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_ct_alerting.ct_alertings : k => v.enabled if v.enabled != null }
}
output "ct_alertings_zone_id" {
  description = "Map of zone_id values across all ct_alertings, keyed the same as var.ct_alertings except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_ct_alerting.ct_alertings : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

