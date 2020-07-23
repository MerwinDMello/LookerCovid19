view: geo_us_counties {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_geo_us_boundaries_counties`
    ;;

  dimension: county_fips_code {
    type: string
    sql: ${TABLE}.county_fips_code ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: mapped_county {
    map_layer_name: us_counties_fips
    sql: ${county_fips_code};;
  }

  dimension: state_fips_code {
    type: string
    sql: ${TABLE}.state_fips_code ;;
  }

dimension: prim_key {
  primary_key: yes
  sql: Concat(${county_name} || ${state_fips_code}) ;;
}
  measure: count {
    type: count
  }
}
