# If necessary, uncomment the line below to include explore_source.

# include: "covid19trends.model.lkml"

view: lookml_jhu_state_agg {
  derived_table: {
    explore_source: jhu_uscovid {
      column: reporting_raw {}
      column: us_state {}
      column: total_daily_cases {}
    }
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
    sql: ${TABLE}.reporting_raw ;;
  }

  dimension: us_state {
    label: "Covid Data Us State"
  }
  dimension: total_daily_cases {
    label: "Covid Data Daily Cases"
    hidden: yes
    type: number
  }
  measure: daily_state_cases {
    type: sum
    sql: ${total_daily_cases} ;;
  }
  dimension: unique_key {
    primary_key: yes
    sql: CONCAT(${reporting_raw},${us_state}) ;;
  }
}
