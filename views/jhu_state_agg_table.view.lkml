view: jhu_state_agg_table {
  derived_table: {
    sql: SELECT reporting_date, US_State, Sum(Daily_Cases) as Daily_Cases
      FROM `covid-19-trends.covid_19_trends_demo.bqpd_covid19_jhu_us_cleansed`
      Group By reporting_date, US_State
       ;;
    sql_trigger_value:SELECT last_modified_time FROM `bigquery-public-data.covid19_jhu_csse.__TABLES__` where table_id = 'summary';;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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

  dimension: us_state {
    type: string
    sql: ${TABLE}.US_State ;;
  }

  dimension: daily_cases {
    hidden: yes
    type: number
    sql: ${TABLE}.Daily_Cases ;;
  }

  dimension: unique_key {
    primary_key: yes
    sql: Concat(${reporting_raw},${us_state}) ;;
  }

  measure: state_daily_cases {
    type: sum
    sql:  ${daily_cases} ;;
  }

  set: detail {
    fields: [reporting_date, us_state, daily_cases]
  }
}
