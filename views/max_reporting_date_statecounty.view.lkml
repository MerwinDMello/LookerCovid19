view: max_reporting_date_statecounty {
  derived_table: {
    sql: SELECT
      US_State,
      US_County,
      Fips_Code,
      Max(Actual_Date) as Actual_Date
      FROM `covid-19-trends.covid_19_trends_demo.bqpd_covid19_jhu_us_cleansed` jhu
      Group By
      US_State,
      US_County,
      Fips_Code
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: us_state {
    type: string
    sql: ${TABLE}.US_State ;;
  }

  dimension: us_county {
    type: string
    sql: ${TABLE}.US_County ;;
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

  dimension: fips_code {
    type: string
    sql: ${TABLE}.Fips_Code ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${TABLE}.US_State, ${TABLE}.US_County, ${TABLE}.Fips_Code, ${TABLE}.Actual_Date) ;;
  }

  set: detail {
    fields: [us_state, us_county, actual_date]
  }
}
