view: weather_history {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_covid19_county_weather_history`
    ;;

  dimension: avg_humidity_rel {
    type: number
    sql: ${TABLE}.avg_humidity_rel ;;
  }

  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp ;;
  }

  dimension: max_humidity_rel {
    type: number
    sql: ${TABLE}.max_humidity_rel ;;
  }

  dimension: max_temp {
    type: number
    sql: ${TABLE}.max_temp ;;
  }

  dimension: min_humidity_rel {
    type: number
    sql: ${TABLE}.min_humidity_rel ;;
  }

  dimension: min_temp {
    type: number
    sql: ${TABLE}.min_temp ;;
  }

  dimension: us_county_code {
    type: string
    sql: ${TABLE}.us_county_code ;;
  }

  dimension_group: actual {
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
    sql: ${TABLE}.Actual_Date ;;
  }

  dimension_group: weather_rptg {
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
    sql: ${TABLE}.weather_rptg_date ;;
  }

  measure: average_temp {
    label: "Average Temperature"
    type: average
    sql: ${avg_temp} ;;
    value_format_name: decimal_2
    drill_fields: []
  }

  measure: maximum_temp {
    label: "Max Temperature"
    type: max
    sql: ${max_temp} ;;
    value_format_name: decimal_2
    drill_fields: []
  }

  measure: minimum_temp {
    label: "Min Temperature"
    type: min
    sql: ${min_temp} ;;
    value_format_name: decimal_2
    drill_fields: []
  }

  measure: average_humidity {
    label: "Average Humidity"
    type: average
    sql: ${avg_humidity_rel} ;;
    value_format_name: decimal_2
    drill_fields: []
  }

  measure: maximum_humidity {
    label: "Max Humidity"
    type: max
    sql: ${max_humidity_rel} ;;
    value_format_name: decimal_2
    drill_fields: []
  }

  measure: minimum_humidity {
    label: "Min Humidity"
    type: min
    sql: ${min_humidity_rel} ;;
    value_format_name: decimal_2
    drill_fields: []
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
