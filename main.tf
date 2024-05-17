resource "newrelic_alert_muting_rule" "foo" {
    name = var.muting.name
    enabled = var.muting.enabled
    description = var.muting.description
    condition {
        conditions {
            attribute   = var.muting.attribute
            operator    = var.muting.operator
            values      = [var.muting.values]
        }
        
        operator = var.muting.operator1
    }
    schedule {
      start_time = var.muting.start_time
      end_time = var.muting.end_time
      time_zone = var.muting.time_zone
      repeat = var.muting.repeat
      weekly_repeat_days = [var.muting.weekly_repeat_days]
      repeat_count = var.muting.repeat_count
    }
}