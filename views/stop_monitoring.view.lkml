view: stop_monitoring {
  sql_table_name: `looker_dev.stop_monitoring`
    ;;

  dimension_group: aimed_arrival {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.aimed_arrival_time ;;
  }

  dimension_group: aimed_departure {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.aimed_departure_time ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}.direction ;;
  }

  dimension: route_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.route_id ;;
  }

  dimension: route_long_name {
    type: string
    sql: ${TABLE}.route_long_name ;;
  }

  dimension: stop_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.stop_id ;;
  }

  dimension: stop_name {
    type: string
    sql: ${TABLE}.stop_name ;;
  }

  dimension_group: time_recorded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time_recorded ;;
  }

  dimension_group: trip {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.trip_date ;;
  }

  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  dimension: vehicle_at_stop {
    type: yesno
    sql: ${TABLE}.vehicle_at_stop ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.vehicle_id ;;
  }

  dimension: vehicle_location {
    type: string
    sql: ${TABLE}.vehicle_location ;;
  }

  dimension: vehicle_location_lat {
    type: number
    sql: ${TABLE}.vehicle_location_lat ;;
  }

  dimension: vehicle_location_lon {
    type: number
    sql: ${TABLE}.vehicle_location_lon ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      route_long_name,
      stop_name,
      trips.trip_id,
      routes.route_id,
      routes.route_long_name,
      routes.route_short_name,
      stops.stop_id,
      stops.stop_name
    ]
  }
}
