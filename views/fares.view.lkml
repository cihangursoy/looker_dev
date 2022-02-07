view: fares {
  sql_table_name: `looker_dev.fares`
    ;;
  drill_fields: [fare_id]
  #test comment

  dimension: fare_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.fare_id ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: rider_desc {
    type: string
    sql: ${TABLE}.rider_desc ;;
  }

  dimension: rider_id {
    type: string
    sql: ${TABLE}.rider_id ;;
  }

  dimension: transfer_duration {
    type: number
    sql: ${TABLE}.transfer_duration ;;
  }

  dimension: transfers_permitted {
    type: string
    sql: ${TABLE}.transfers_permitted ;;
  }

  measure: count {
    type: count
    drill_fields: [fare_id]
  }
}
