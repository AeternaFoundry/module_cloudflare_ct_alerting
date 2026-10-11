resource "cloudflare_ct_alerting" "ct_alertings" {
  for_each = var.ct_alertings

  enabled = each.value.enabled
  zone_id = each.value.zone_id
  emails  = each.value.emails
}

