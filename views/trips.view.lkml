view: trips {
  sql_table_name: `looker_dev.trips`
    ;;

  dimension: trip_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.trip_id ;;
  }

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
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

  dimension: service_category {
    type: string
    sql: ${TABLE}.service_category ;;
  }

  dimension: shape_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.shape_id ;;
  }

  dimension: trip_headsign {
    type: string
    sql: ${TABLE}.trip_headsign ;;
  }

  dimension: trip_shape {
    type: string
    sql: ${TABLE}.trip_shape ;;
  }

  measure: count {
    type: count
    link: {
      label: "Trips"
      url: "https://dev.looker.gursoycihan.com/embed/looks/1"
    }
    # drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  # set: detail {
  #   fields: [
  #     trip_id,
  #     routes.route_id,
  #     routes.route_long_name,
  #     routes.route_short_name,
  #     shapes.shape_id,
  #     stop_monitoring.count,
  #     stop_times.count,
  #     vehicle_monitoring.count
  #   ]
  # }
}
