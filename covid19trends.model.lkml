connection: "covid19google"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

#datagroups
datagroup: jhu_datagroup {
  max_cache_age: "10 minutes"
  sql_trigger:SELECT MAX(reporting_date) FROM `covid-19-trends.covid_19_trends_demo.bqpd_covid19_jhu_us_cleansed` ;;
}

datagroup: weather_datagroup {
  max_cache_age: "10 minutes"
  sql_trigger:SELECT MAX(weather_rptg_date) FROM `covid-19-trends.covid_19_trends_demo.bqpd_covid19_county_weather_history` ;;
}

datagroup: mobility_datagroup {
  max_cache_age: "10 minutes"
  sql_trigger:SELECT MAX(mobility_report_date) FROM `covid-19-trends.covid_19_trends_demo.bqpd_covid19_google_mobility_report` ;;
}

explore: jhu_uscovid{
  persist_with:jhu_datagroup
  label: "Cases Reported by State, County and Date"
  #sql_always_where: ${actual_date}>= Date_Sub(current_date, INTERVAL 3 DAY ) ;;
  #sql_always_having: ${total_cumulative_cases} > 10000 ;;
  #conditionally_filter: {
  #  filters: {
  #    field: us_state_upper
  #    value: "CALIFORNIA"
  #  }
  #  unless: [actual_date]
  #}
#  always_filter: {
#    filters: {
#      field: us_state_upper
#      value: "CALIFORNIA"
#    }
#  }
  view_label: "Covid Data"
    join: geo_us_states {
      view_label: "US States"

      type: left_outer
      relationship: many_to_one
      sql_on: ${jhu_uscovid.us_state} = ${geo_us_states.state_name} ;;
      }
    join: geo_us_counties {
      relationship: many_to_one
      type: left_outer
      sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code}
      AND (${jhu_uscovid.fips_code} = ${geo_us_counties.county_fips_code}
      Or ${jhu_uscovid.us_county} = ${geo_us_counties.county_name});;
      }
    join: census_data_view {
    type: left_outer
    relationship: many_to_one
    sql_on: ${geo_us_counties.county_fips_code} = ${census_data_view.us_county_code} ;;
  }
}

explore:  weather_history{
  persist_with:weather_datagroup

  join: geo_us_counties {
    #fields:[county_fips_code,mapped_county,geo_us_counties.state_fips_code]
    type: left_outer
    relationship: many_to_one
    sql_on: ${weather_history.us_county_code} = ${geo_us_counties.county_fips_code};;
  }
  join: geo_us_states {
    type: left_outer
    relationship: many_to_one
    sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code} ;;
  }
}

explore:  mobility_report{
  persist_with:mobility_datagroup
  join: geo_us_counties {
    type: left_outer
    relationship: many_to_one
    sql_on: ${mobility_report.us_county_code} = ${geo_us_counties.county_fips_code};;
  }
  join: geo_us_states {
    type: left_outer
    relationship: many_to_one
    sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code} ;;
  }
}

explore: jhu_state_agg_table {
  label: "Cases Reported for County vs State"
  join: jhu_uscovid {
    type: left_outer
    relationship: one_to_many
    sql_on: ${jhu_state_agg_table.us_state} = ${jhu_uscovid.us_state}
    AND ${jhu_state_agg_table.reporting_raw} = ${jhu_uscovid.reporting_raw};;
  }
  join: geo_us_states {
    view_label: "US States"

    type: left_outer
    relationship: many_to_one
    sql_on: ${jhu_uscovid.us_state} = ${geo_us_states.state_name} ;;
  }
  join: geo_us_counties {
    relationship: many_to_one
    type: left_outer
    sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code}
      AND (${jhu_uscovid.fips_code} = ${geo_us_counties.county_fips_code}
      Or ${jhu_uscovid.us_county} = ${geo_us_counties.county_name});;
  }
  join: census_data_view {
    type: left_outer
    relationship: many_to_one
    sql_on: ${geo_us_counties.county_fips_code} = ${census_data_view.us_county_code} ;;
  }
}


explore: lookml_jhu_state_agg {
  label: "Cases Reported for County vs State v2"
  join: jhu_uscovid {
    type: left_outer
    relationship: one_to_many
    sql_on: ${lookml_jhu_state_agg.us_state} = ${jhu_uscovid.us_state}
      AND ${lookml_jhu_state_agg.reporting_raw} = ${jhu_uscovid.reporting_raw};;
  }
  join: geo_us_states {
    view_label: "US States"

    type: left_outer
    relationship: many_to_one
    sql_on: ${jhu_uscovid.us_state} = ${geo_us_states.state_name} ;;
  }
  join: geo_us_counties {
    relationship: many_to_one
    type: left_outer
    sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code}
      AND (${jhu_uscovid.fips_code} = ${geo_us_counties.county_fips_code}
      Or ${jhu_uscovid.us_county} = ${geo_us_counties.county_name});;
  }
  join: census_data_view {
    type: left_outer
    relationship: many_to_one
    sql_on: ${geo_us_counties.county_fips_code} = ${census_data_view.us_county_code} ;;
  }
}

explore:census_data_view {
  }


explore:  forecasts_14d{

}
