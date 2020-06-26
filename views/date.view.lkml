view: date {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqgv_covid19_date`
    ;;

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
    sql: ${TABLE}.Reporting_Date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
