view: bqpd_covid19_jhu_us_summarized_by_state {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_covid19_jhu_us_summarized_by_state`
    ;;

  dimension: daily_cases {
    type: number
    sql: ${TABLE}.Daily_Cases ;;
  }

  dimension: daily_deaths {
    type: number
    sql: ${TABLE}.Daily_Deaths ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: map_plotted_by_states_territories {
    type: string
    sql: ${TABLE}.Map_Plotted_By_StatesTerritories ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}.Total_Cases ;;
  }

  dimension: total_deaths {
    type: number
    sql: ${TABLE}.Total_Deaths ;;
  }

  dimension: us_state {
    type: string
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
