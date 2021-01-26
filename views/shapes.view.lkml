view: shapes {
  sql_table_name: `looker_dev.shapes`
    ;;
  drill_fields: [shape_id]

  dimension: shape_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.shape_id ;;
  }

  dimension: shape_distance_traveled {
    type: number
    sql: ${TABLE}.shape_distance_traveled ;;
  }

  dimension: shape_point_geom {
    type: string
    sql: ${TABLE}.shape_point_geom ;;
  }

  dimension: shape_point_lat {
    type: number
    sql: ${TABLE}.shape_point_lat ;;
  }

  dimension: shape_point_lon {
    type: number
    sql: ${TABLE}.shape_point_lon ;;
  }

  dimension: shape_point_sequence {
    type: number
    sql: ${TABLE}.shape_point_sequence ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_id, trips.count]
  }
}
