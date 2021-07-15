view: materialized_view_test {
  derived_table: {
    explore_source: trips {
      column: block_id {}
      column: direction {}
      column: route_id { field: routes.route_id }
      column: count {}
    }
  }
  dimension: block_id {}
  dimension: direction {}
  dimension: route_id {}
  dimension: count {
    type: number
  }
}
