variable "monitor_name" {}

variable "monitor_type" {}

variable "monitor_query" {}

variable "message" {}

variable "draft_status" {}

variable "priority" {}

variable "tags" {
  type = list(string)
}

variable "critical_threshold" {
    default = 75
}
