view: jhu_uscovid {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_covid19_jhu_us_cleansed`
    ;;

  dimension: daily_cases {
    hidden: yes
    type: number
    sql: ${TABLE}.Daily_Cases ;;
  }

  dimension: daily_deaths {
    hidden: yes
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


  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${TABLE}.US_State, Coalesce(${TABLE}.US_County,''), ${TABLE}.Fips_Code, ${TABLE}.Actual_Date) ;;
  }

  measure: total_cumulative_cases {
    label: "Total Cases"
    type: sum
    sql: ${daily_cases} ;;
  }

  measure: total_cumulative_cases_population {
    label: "Total Cases by Millions"
    type: number
    sql: ${total_cumulative_cases} / ${census_data_view.population}*1000000;;
  }

  measure: total_cumulative_deaths {
    label: "Total Deaths"
    type: sum
    sql: ${daily_deaths} ;;
  }

  parameter: population_scale {
    type: string
    allowed_value: {
      label: "Raw Data"
      value: "total_numbers"
    }
    allowed_value: {
      label: "Scaled to Millions"
      value: "scaled_to_millions"
    }
  }

  measure: dynamic_measure {
    label_from_parameter: population_scale
    sql:
            CASE
             WHEN {% parameter population_scale %} = 'Raw Data' THEN ${total_cumulative_cases}
             WHEN {% parameter population_scale %} = 'Scaled to Millions' THEN ${total_cumulative_cases_population}
             ELSE NULL
            END ;;
  }

  measure: total_daily_cases {
    label: "Daily Cases"
    type: sum
    sql: ${daily_cases} ;;
  }

  measure: total_daily_deaths {
    label: "Daily Deaths"
    type: sum
    sql: ${daily_deaths} ;;
  }
}
