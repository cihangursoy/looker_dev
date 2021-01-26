view: routes {
  sql_table_name: `looker_dev.routes`
    ;;
  drill_fields: [route_id]

  dimension: route_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.route_id ;;
  }

  dimension: route_long_name {
    type: string
    sql: ${TABLE}.route_long_name ;;
  }

  dimension: route_short_name {
    type: string
    sql: ${TABLE}.route_short_name ;;
  }

  dimension: route_type {
    type: string
    sql: ${TABLE}.route_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      route_id,
      route_long_name,
      route_short_name,
      trips.count,
      stop_monitoring.count,
      vehicle_monitoring.count
    ]
  }
}
