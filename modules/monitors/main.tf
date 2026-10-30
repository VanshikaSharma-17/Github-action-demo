resource "datadog_monitor" "foo" {

  name    = var.monitor_name
  type    = var.monitor_type
  message = var.message
  draft_status=var.draft_status 
  priority=var.priority
  query = var.monitor_query

  monitor_thresholds {
    critical = var.critical_threshold
  }

  tags = var.tags
}