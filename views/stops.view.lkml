view: stops {
  sql_table_name: `looker_dev.stops`
    ;;
  drill_fields: [stop_id]

  dimension: stop_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.stop_id ;;
  }

  dimension: stop_geom {
    type: string
    sql: ${TABLE}.stop_geom ;;
  }
  dimension: stop_loc {
    type:  location
    sql_latitude: ${TABLE}.stop_lat;;
    sql_longitude: ${TABLE}.stop_lon;;
  }

  dimension: stop_name {
    type: string
    sql: ${TABLE}.stop_name ;;
  }

  measure: count {
    type: count
    drill_fields: [stop_id, stop_name, stop_monitoring.count, stop_times.count]
  }
}
