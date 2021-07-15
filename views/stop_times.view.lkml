view: stop_times {
  sql_table_name: `looker_dev.stop_times`
    ;;

  dimension: arrival_time {}

  dimension: arrives_next_day {
    type: yesno
    sql: ${TABLE}.arrives_next_day ;;
  }

  dimension: departs_next_day {
    type: yesno
    sql: ${TABLE}.departs_next_day ;;
  }

  dimension_group: departure {
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
    sql: ${TABLE}.departure_time ;;
  }

  dimension: dropoff_type {
    type: string
    sql: ${TABLE}.dropoff_type ;;
  }

  dimension: exact_timepoint {
    type: yesno
    sql: ${TABLE}.exact_timepoint ;;
  }

  dimension: stop_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.stop_id ;;
  }

  dimension: stop_sequence {
    type: number
    sql: ${TABLE}.stop_sequence ;;
  }

  dimension: trip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  measure: count {
    type: count
    drill_fields: [trips.trip_id, stops.stop_id, stops.stop_name]
  }
}
