connection: "covid19google"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: jhu_uscovid{
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
