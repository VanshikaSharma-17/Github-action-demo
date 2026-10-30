# resource "datadog_monitor" "cpu_alert" {
#   name    = "High CPU Usage"
#   type    = "metric alert"
#   query   = "avg(last_1h):avg:system.cpu.user{env:sap} by {host} > 80"
#   message = "CPU usage is above 80% . Notify: @sharmavanshika8685@gmail.com"

#   monitor_thresholds {
#     warning  = 70
#     critical = 80

#   }
#   tags = [
#   "owner:vanshika.rani@cloudeq",
#   "env:sap",
#   "service:QBRIDGEAI",
#   "AssignmentGroup:frontendteam",
#   "PolicyName:Frontend"
# ]
# }
module "cpu_monitor" {

  source = "./modules/monitors"

  monitor_name = "CPU Usage Alert"

  monitor_type = "metric alert"

  monitor_query = "avg(last_1h):avg:system.cpu.user{env:sap} by {host} > 80"

  critical_threshold = 80

  message      = "CPU crossed 80%"
  draft_status = "draft"
  priority     = "p1"
  tags = local.tags

#   tags = [
#     "owner:vanshika.rani@cloudeq",
#     "env:sap",
#     "service:QBRIDGEAI",
#     "AssignmentGroup:frontendteam",
#     "PolicyName:Frontend"
#   ]
}
module "memory_monitor" {

  source = "./modules/monitors"

  monitor_name = "Memory Usage Alert"

  monitor_type = "metric alert"

  monitor_query = "avg(last_1h):avg:system.mem.pct_usable{env:sap} < 10"

  critical_threshold = 10

  message      = "Memory usage above 60%"
  draft_status = "draft"
  priority     = "p1"
  tags = local.tags


#   tags = [
#     "owner:vanshika.rani@cloudeq",
#     "env:sap",
#     "service:QBRIDGEAI",
#     "AssignmentGroup:frontendteam",
#     "PolicyName:Frontend"
#   ]
}
