connection: "muni_trips"

# include all the views
include: "/views/**/*.view"
include: "/views/pop_support.lkml"
include: "/dashboards/*.dashboard"

datagroup: cihan_looker_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

# Making a change here

access_grant: trips_access {
  allowed_values: ["Yes"]
  user_attribute: trips
}

persist_with: cihan_looker_dev_default_datagroup

explore: calendar {}

explore: fares {}

explore: routes {}

explore: shapes {}

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
  required_access_grants: [trips_access]
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

explore: bq_job_data {}

explore: comments {
  join: pop_support {
    view_label: "PoP Support - Overrides and Tools" #(Optionally) Update view label for use in this explore here, rather than in pop_support view. You might choose to align this to your POP date's view label.
    relationship:one_to_one #we are intentionally fanning out, so this should stay one_to_one
    sql:{% if pop_support.periods_ago._in_query%}LEFT JOIN pop_support on 1=1{%endif%};;#join and fannout data for each prior_period included **if and only if** lynchpin pivot field (periods_ago) is selected. This safety measure ensures we dont fire any fannout join if the user selected PoP parameters from pop support but didn't actually select a pop pivot field.
  }
}
