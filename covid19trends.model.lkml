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
  label: "Cases Reported by State and Date"
    join: geo_us_states {
      relationship: many_to_one
      sql_on: ${jhu_uscovid.us_state} = ${geo_us_states.state_name} ;;
      }
    join: geo_us_counties {
      relationship: many_to_one
      sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code}
      AND (${jhu_uscovid.fips_code} = ${geo_us_counties.county_fips_code}
      Or ${jhu_uscovid.us_county} = ${geo_us_counties.county_name});;
      }
}
explore:  weather_history{
  persist_with:weather_datagroup
  join: geo_us_counties {
    relationship: many_to_one
    sql_on: ${weather_history.us_county_code} = ${geo_us_counties.county_fips_code};;
  }
  join: geo_us_states {
    relationship: many_to_one
    sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code} ;;
  }
}
explore:  mobility_report{
  persist_with:mobility_datagroup
  join: geo_us_counties {
    relationship: many_to_one
    sql_on: ${mobility_report.us_county_code} = ${geo_us_counties.county_fips_code};;
  }
  join: geo_us_states {
    relationship: many_to_one
    sql_on: ${geo_us_states.state_fips_code} = ${geo_us_counties.state_fips_code} ;;
  }
}
