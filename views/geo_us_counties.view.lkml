view: geo_us_counties {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqpd_geo_us_boundaries_counties`
    ;;

  dimension: area_land_meters {
    type: number
    sql: ${TABLE}.area_land_meters ;;
  }

  dimension: area_water_meters {
    type: number
    sql: ${TABLE}.area_water_meters ;;
  }

  dimension: cbsa_fips_code {
    type: string
    sql: ${TABLE}.cbsa_fips_code ;;
  }

  dimension: county_fips_code {
    type: string
    sql: ${TABLE}.county_fips_code ;;
  }

  dimension: county_geom {
    type: string
    sql: ${TABLE}.county_geom ;;
  }

  dimension: county_gnis_code {
    type: string
    sql: ${TABLE}.county_gnis_code ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: csa_fips_code {
    type: string
    sql: ${TABLE}.csa_fips_code ;;
  }

  dimension: fips_class_code {
    type: string
    sql: ${TABLE}.fips_class_code ;;
  }

  dimension: functional_status {
    type: string
    sql: ${TABLE}.functional_status ;;
  }

  dimension: geo_id {
    type: string
    sql: ${TABLE}.geo_id ;;
  }

  dimension: int_point_geom {
    type: string
    sql: ${TABLE}.int_point_geom ;;
  }

  dimension: int_point_lat {
    type: number
    sql: ${TABLE}.int_point_lat ;;
  }

  dimension: int_point_lon {
    type: number
    sql: ${TABLE}.int_point_lon ;;
  }

  dimension: lsad_code {
    type: string
    sql: ${TABLE}.lsad_code ;;
  }

  dimension: lsad_name {
    type: string
    sql: ${TABLE}.lsad_name ;;
  }

  dimension: met_div_fips_code {
    type: string
    sql: ${TABLE}.met_div_fips_code ;;
  }

  dimension: mtfcc_feature_class_code {
    type: string
    sql: ${TABLE}.mtfcc_feature_class_code ;;
  }

  dimension: state_fips_code {
    type: string
    sql: ${TABLE}.state_fips_code ;;
  }

  measure: count {
    type: count
    drill_fields: [county_name, lsad_name]
  }
}
