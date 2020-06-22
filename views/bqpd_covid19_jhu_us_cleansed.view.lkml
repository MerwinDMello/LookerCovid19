view: bqpd_covid19_jhu_us_cleansed {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_covid19_jhu_us_cleansed`
    ;;

  dimension: daily_cases {
    type: number
    sql: ${TABLE}.Daily_Cases ;;
  }

  dimension: daily_deaths {
    type: number
    sql: ${TABLE}.Daily_Deaths ;;
  }

  dimension: fips_code {
    type: string
    sql: ${TABLE}.Fips_Code ;;
  }

  dimension: map_plotted_by_county {
    type: yesno
    sql: ${TABLE}.Map_Plotted_By_County ;;
  }

  dimension: map_plotted_by_states_territories {
    type: yesno
    sql: ${TABLE}.Map_Plotted_By_StatesTerritories ;;
  }

  dimension_group: reporting {
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
    sql: ${TABLE}.reporting_date ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}.Total_Cases ;;
  }

  dimension: total_deaths {
    type: number
    sql: ${TABLE}.Total_Deaths ;;
  }

  dimension: us_county {
    type: string
    sql: ${TABLE}.US_County ;;
  }

  dimension: us_state {
    type: string
    sql: ${TABLE}.US_State ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
