view: forecasts_14d {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_covid19_public_forecasts_county_14d`
    ;;

  dimension: county_fips_code {
    type: string
    sql: ${TABLE}.county_fips_code ;;
  }

  dimension: mapped_county {
    map_layer_name: us_counties_fips
    sql: ${county_fips_code};;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: prediction {
    type: yesno
    sql: ${TABLE}.prediction ;;
  }

  dimension: cumulative_confirmed {
    type: number
    sql: ${TABLE}.cumulative_confirmed ;;
  }

  dimension: cumulative_deaths {
    type: number
    sql: ${TABLE}.cumulative_deaths ;;
  }

  dimension_group: filtered {
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
    sql: ${TABLE}.filtered_date ;;
  }

  dimension: new_confirmed {
    type: number
    sql: ${TABLE}.new_confirmed ;;
  }

  dimension: new_deaths {
    type: number
    sql: ${TABLE}.new_deaths ;;
  }

  dimension_group: prediction {
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
    sql: ${TABLE}.prediction_date ;;
  }

  measure: new_confirmed_cases {
    label: "Daily Cases"
    type: sum
    sql: ${new_confirmed} ;;
    filters: [prediction: "no"]
  }

  measure: new_predicted_confirmed_cases {
    label: "Daily Predicted Cases"
    type: sum
    sql: ${new_confirmed} ;;
    filters: [prediction: "yes"]
  }

  measure: new_death_cases {
    label: "Daily Deaths"
    type: sum
    sql: ${new_deaths} ;;
    filters: [prediction: "no"]
  }

  measure: new_predicted_death_cases {
    label: "Daily Predicted Deaths"
    type: sum
    sql: ${new_deaths} ;;
    filters: [prediction: "yes"]
  }

  measure: average_predicted_confirmed_cases {
    label: "Average Predicted Cases"
    type: average
    sql: ${new_confirmed} ;;
    value_format_name: decimal_2
    filters: [prediction: "yes"]
    #drill_fields: []
  }

  measure: average_predicted_death_cases {
    label: "Average Predicted Deaths"
    type: average
    sql: ${new_deaths} ;;
    value_format_name: decimal_2
    filters: [prediction: "yes"]
    #drill_fields: []
  }

  measure: count {
    type: count
    drill_fields: [state_name, county_name]
  }
}
