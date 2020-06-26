view: mobility_report {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_covid19_google_mobility_report`
    ;;

  dimension: grocery_and_pharmacy_percent_change {
    type: number
    sql: ${TABLE}.grocery_and_pharmacy_percent_change ;;
  }

  dimension: location_category {
    type: string
    sql: ${TABLE}.location_category ;;
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

  dimension_group: mobility_report {
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
    sql: ${TABLE}.mobility_report_date ;;
  }

  dimension: parks_percent_change {
    type: number
    sql: ${TABLE}.parks_percent_change ;;
  }

  dimension: residential_percent_change {
    type: number
    sql: ${TABLE}.residential_percent_change ;;
  }

  dimension: retail_and_recreation_percent_change {
    type: number
    sql: ${TABLE}.retail_and_recreation_percent_change ;;
  }

  dimension: transit_stations_percent_change {
    type: number
    sql: ${TABLE}.transit_stations_percent_change ;;
  }

  dimension: us_county {
    type: string
    sql: ${TABLE}.us_county ;;
  }

  dimension: us_county_code {
    type: string
    sql: ${TABLE}.us_county_code ;;
  }

  dimension: us_state {
    type: string
    sql: ${TABLE}.us_state ;;
  }

  dimension: us_state_code {
    type: string
    sql: ${TABLE}.us_state_code ;;
  }

  dimension: workplaces_percent_change {
    type: number
    sql: ${TABLE}.workplaces_percent_change ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: grocery_and_pharmacy {
    type: average
    sql: ${grocery_and_pharmacy_percent_change} ;;
    value_format: "0\%"
  }

  measure: parks {
    type: average
    sql: ${parks_percent_change} ;;
    value_format: "0\%"
  }

  measure: residential {
    type: average
    sql: ${residential_percent_change} ;;
    value_format: "0\%"
  }

  measure: retail_and_recreation {
    type: average
    sql: ${retail_and_recreation_percent_change} ;;
    value_format: "0\%"
  }

  measure: transit_stations {
    type: average
    sql: ${transit_stations_percent_change} ;;
    value_format: "0\%"
  }

  measure: workplaces {
    type: average
    sql: ${workplaces_percent_change} ;;
    value_format: "0\%"
  }
}
