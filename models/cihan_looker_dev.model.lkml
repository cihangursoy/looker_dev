connection: "muni_trips"

# include all the views
include: "/views/**/*.view"

datagroup: cihan_looker_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cihan_looker_dev_default_datagroup

explore: calendar {}

explore: fares {}

explore: routes {}

explore: shapes {}


#This is the change I want to commit and then revert

explore: stop_monitoring {
  join: trips {
    type: left_outer
    sql_on: ${stop_monitoring.trip_id} = ${trips.trip_id} ;;
    relationship: many_to_one
  }

  join: routes {
    type: left_outer
    sql_on: ${stop_monitoring.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }

  join: stops {
    type: left_outer
    sql_on: ${stop_monitoring.stop_id} = ${stops.stop_id} ;;
    relationship: many_to_one
  }

  join: shapes {
    type: left_outer
    sql_on: ${trips.shape_id} = ${shapes.shape_id} ;;
    relationship: many_to_one
  }
}

explore: stop_times {
  join: trips {
    type: left_outer
    sql_on: ${stop_times.trip_id} = ${trips.trip_id} ;;
    relationship: many_to_one
  }

  join: stops {
    type: left_outer
    sql_on: ${stop_times.stop_id} = ${stops.stop_id} ;;
    relationship: many_to_one
  }

  join: routes {
    type: left_outer
    sql_on: ${trips.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }

  join: shapes {
    type: left_outer
    sql_on: ${trips.shape_id} = ${shapes.shape_id} ;;
    relationship: many_to_one
  }
}

explore: stops {}

explore: trips {
  join: routes {
    type: left_outer
    sql_on: ${trips.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }

  join: shapes {
    type: left_outer
    sql_on: ${trips.shape_id} = ${shapes.shape_id} ;;
    relationship: many_to_one
  }
}

explore: vehicle_monitoring {
  join: routes {
    type: left_outer
    sql_on: ${vehicle_monitoring.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }

  join: trips {
    type: left_outer
    sql_on: ${vehicle_monitoring.trip_id} = ${trips.trip_id} ;;
    relationship: many_to_one
  }

  join: shapes {
    type: left_outer
    sql_on: ${trips.shape_id} = ${shapes.shape_id} ;;
    relationship: many_to_one
  }
}
