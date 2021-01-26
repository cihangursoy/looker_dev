view: vehicle_monitoring {
  sql_table_name: `looker_dev.vehicle_monitoring`
    ;;

  dimension: direction {
    type: string
    sql: ${TABLE}.direction ;;
  }

  dimension_group: next_stop_aimed_arrival {
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
    sql: ${TABLE}.next_stop_aimed_arrival_time ;;
  }

  dimension_group: next_stop_aimed_departure {
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
    sql: ${TABLE}.next_stop_aimed_departure_time ;;
  }

  dimension_group: next_stop_expected_arrival {
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
    sql: ${TABLE}.next_stop_expected_arrival_time ;;
  }

  dimension_group: next_stop_expected_departure {
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
    sql: ${TABLE}.next_stop_expected_departure_time ;;
  }

  dimension: next_stop_id {
    type: string
    sql: ${TABLE}.next_stop_id ;;
  }

  dimension: next_stop_name {
    type: string
    sql: ${TABLE}.next_stop_name ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_1 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_1 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_10 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_10 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_2 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_2 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_3 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_3 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_4 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_4 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_5 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_5 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_6 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_6 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_7 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_7 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_8 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_8 ;;
  }

  dimension_group: onward_stop_aimed_arrival_time_9 {
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
    sql: ${TABLE}.onward_stop_aimed_arrival_time_9 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_1 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_1 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_10 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_10 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_2 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_2 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_3 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_3 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_4 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_4 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_5 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_5 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_6 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_6 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_7 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_7 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_8 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_8 ;;
  }

  dimension_group: onward_stop_aimed_departure_time_9 {
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
    sql: ${TABLE}.onward_stop_aimed_departure_time_9 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_1 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_1 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_10 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_10 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_2 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_2 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_3 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_3 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_4 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_4 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_5 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_5 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_6 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_6 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_7 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_7 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_8 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_8 ;;
  }

  dimension_group: onward_stop_expected_arrival_time_9 {
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
    sql: ${TABLE}.onward_stop_expected_arrival_time_9 ;;
  }

  dimension: onward_stop_id_1 {
    type: string
    sql: ${TABLE}.onward_stop_id_1 ;;
  }

  dimension: onward_stop_id_10 {
    type: string
    sql: ${TABLE}.onward_stop_id_10 ;;
  }

  dimension: onward_stop_id_2 {
    type: string
    sql: ${TABLE}.onward_stop_id_2 ;;
  }

  dimension: onward_stop_id_3 {
    type: string
    sql: ${TABLE}.onward_stop_id_3 ;;
  }

  dimension: onward_stop_id_4 {
    type: string
    sql: ${TABLE}.onward_stop_id_4 ;;
  }

  dimension: onward_stop_id_5 {
    type: string
    sql: ${TABLE}.onward_stop_id_5 ;;
  }

  dimension: onward_stop_id_6 {
    type: string
    sql: ${TABLE}.onward_stop_id_6 ;;
  }

  dimension: onward_stop_id_7 {
    type: string
    sql: ${TABLE}.onward_stop_id_7 ;;
  }

  dimension: onward_stop_id_8 {
    type: string
    sql: ${TABLE}.onward_stop_id_8 ;;
  }

  dimension: onward_stop_id_9 {
    type: string
    sql: ${TABLE}.onward_stop_id_9 ;;
  }

  dimension: onward_stop_name_1 {
    type: string
    sql: ${TABLE}.onward_stop_name_1 ;;
  }

  dimension: onward_stop_name_10 {
    type: string
    sql: ${TABLE}.onward_stop_name_10 ;;
  }

  dimension: onward_stop_name_2 {
    type: string
    sql: ${TABLE}.onward_stop_name_2 ;;
  }

  dimension: onward_stop_name_3 {
    type: string
    sql: ${TABLE}.onward_stop_name_3 ;;
  }

  dimension: onward_stop_name_4 {
    type: string
    sql: ${TABLE}.onward_stop_name_4 ;;
  }

  dimension: onward_stop_name_5 {
    type: string
    sql: ${TABLE}.onward_stop_name_5 ;;
  }

  dimension: onward_stop_name_6 {
    type: string
    sql: ${TABLE}.onward_stop_name_6 ;;
  }

  dimension: onward_stop_name_7 {
    type: string
    sql: ${TABLE}.onward_stop_name_7 ;;
  }

  dimension: onward_stop_name_8 {
    type: string
    sql: ${TABLE}.onward_stop_name_8 ;;
  }

  dimension: onward_stop_name_9 {
    type: string
    sql: ${TABLE}.onward_stop_name_9 ;;
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
      next_stop_name,
      route_long_name,
      routes.route_id,
      routes.route_long_name,
      routes.route_short_name,
      trips.trip_id
    ]
  }
}
