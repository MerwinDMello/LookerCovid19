view: census_data_view {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqgd_census_data_view`
    ;;

  dimension: total_population {
    type: number
    sql: ${TABLE}.Total_Population ;;
  }


  measure: population {
    label: "County Population"
    type: sum
    sql: ${total_population} ;;
  }

  dimension: us_county {
    type: number
    sql: ${TABLE}.US_County ;;
  }

  dimension: us_county_code {
    primary_key: yes
    type: string
    sql: ${TABLE}.US_County_Code ;;
  }

  dimension: us_state {
    type: number
    sql: ${TABLE}.US_State ;;
  }

  dimension: us_state_code {
    type: string
    sql: ${TABLE}.US_State_Code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
