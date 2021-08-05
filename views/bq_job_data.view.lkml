view: bq_job_data {
    sql_table_name:`region-us`.INFORMATION_SCHEMA.JOBS_BY_PROJECT;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: creation_time {
    type: time
    sql: ${TABLE}.creation_time ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_number {
    type: number
    sql: ${TABLE}.project_number ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_type {
    type: string
    sql: ${TABLE}.job_type ;;
  }

  dimension: statement_type {
    type: string
    sql: ${TABLE}.statement_type ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension_group: start_time {
    type: time
    sql: ${TABLE}.start_time ;;
  }

  dimension_group: end_time {
    type: time
    sql: ${TABLE}.end_time ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: looker_user {
    type: string
    sql: SUBSTR(${query},STRPOS(${query},"user_id")+9,1);;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: reservation_id {
    type: string
    sql: ${TABLE}.reservation_id ;;
  }

  measure: total_bytes_processed {
    type: sum
    sql: ${TABLE}.total_bytes_processed ;;
  }

  dimension: total_slot_ms {
    type: number
    sql: ${TABLE}.total_slot_ms ;;
  }

  dimension: error_result {
    type: string
    sql: ${TABLE}.error_result ;;
  }

  dimension: cache_hit {
    type: string
    sql: ${TABLE}.cache_hit ;;
  }

  dimension: destination_table {
    type: string
    sql: ${TABLE}.destination_table ;;
  }

  dimension: referenced_tables {
    type: string
    sql: ${TABLE}.referenced_tables ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: timeline {
    type: string
    sql: ${TABLE}.timeline ;;
  }

  dimension: job_stages {
    type: string
    sql: ${TABLE}.job_stages ;;
  }

  dimension: total_bytes_billed {
    type: number
    sql: ${TABLE}.total_bytes_billed ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: parent_job_id {
    type: string
    sql: ${TABLE}.parent_job_id ;;
  }

  dimension: dml_statistics {
    type: string
    sql: ${TABLE}.dml_statistics ;;
  }

  set: detail {
    fields: [
      creation_time_time,
      project_id,
      project_number,
      user_email,
      job_id,
      job_type,
      statement_type,
      priority,
      start_time_time,
      end_time_time,
      query,
      state,
      reservation_id,
      total_bytes_processed,
      total_slot_ms,
      error_result,
      cache_hit,
      destination_table,
      referenced_tables,
      labels,
      timeline,
      job_stages,
      total_bytes_billed,
      transaction_id,
      parent_job_id,
      dml_statistics
    ]
  }
}
