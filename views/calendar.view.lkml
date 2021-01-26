view: calendar {
  sql_table_name: `looker_dev.calendar`
    ;;

  dimension: exception_type {
    type: yesno
    sql: ${TABLE}.exception_type ;;
  }

  dimension_group: exceptions {
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
    sql: ${TABLE}.exceptions ;;
  }

  dimension: friday {
    type: yesno
    sql: ${TABLE}.friday ;;
  }

  dimension: monday {
    type: yesno
    sql: ${TABLE}.monday ;;
  }

  dimension: saturday {
    type: yesno
    sql: ${TABLE}.saturday ;;
  }

  dimension: service_desc {
    type: string
    sql: ${TABLE}.service_desc ;;
  }

  dimension: service_id {
    type: string
    sql: ${TABLE}.service_id ;;
  }

  dimension: sunday {
    type: yesno
    sql: ${TABLE}.sunday ;;
  }

  dimension: thursday {
    type: yesno
    sql: ${TABLE}.thursday ;;
  }

  dimension: tuesday {
    type: yesno
    sql: ${TABLE}.tuesday ;;
  }

  dimension: wednesday {
    type: yesno
    sql: ${TABLE}.wednesday ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
