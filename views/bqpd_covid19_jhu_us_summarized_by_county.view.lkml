view: bqpd_covid19_jhu_us_summarized_by_county {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_covid19_jhu_us_summarized_by_county`
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

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: map_plotted_by_county {
    type: string
    sql: ${TABLE}.Map_Plotted_By_County ;;
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
