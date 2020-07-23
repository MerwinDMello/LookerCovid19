view: geo_us_states {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_geo_us_boundaries_states`
    ;;

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: mapped_state {
    map_layer_name: us_states
    sql: ${state};;
  }

  dimension: state_fips_code {
    type: string
    sql: ${TABLE}.state_fips_code ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
