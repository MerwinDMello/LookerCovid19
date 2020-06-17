view: bqgd_census_data {
  sql_table_name: `covid-19-trends.covid_19_trends_demo.bqgd_census_data`
    ;;

  dimension: births2010 {
    type: number
    sql: ${TABLE}.BIRTHS2010 ;;
  }

  dimension: births2011 {
    type: number
    sql: ${TABLE}.BIRTHS2011 ;;
  }

  dimension: births2012 {
    type: number
    sql: ${TABLE}.BIRTHS2012 ;;
  }

  dimension: births2013 {
    type: number
    sql: ${TABLE}.BIRTHS2013 ;;
  }

  dimension: births2014 {
    type: number
    sql: ${TABLE}.BIRTHS2014 ;;
  }

  dimension: births2015 {
    type: number
    sql: ${TABLE}.BIRTHS2015 ;;
  }

  dimension: births2016 {
    type: number
    sql: ${TABLE}.BIRTHS2016 ;;
  }

  dimension: births2017 {
    type: number
    sql: ${TABLE}.BIRTHS2017 ;;
  }

  dimension: births2018 {
    type: number
    sql: ${TABLE}.BIRTHS2018 ;;
  }

  dimension: births2019 {
    type: number
    sql: ${TABLE}.BIRTHS2019 ;;
  }

  dimension: census2010_pop {
    type: number
    sql: ${TABLE}.CENSUS2010POP ;;
  }

  dimension: county {
    type: number
    sql: ${TABLE}.COUNTY ;;
  }

  dimension: ctyname {
    type: string
    sql: ${TABLE}.CTYNAME ;;
  }

  dimension: deaths2010 {
    type: number
    sql: ${TABLE}.DEATHS2010 ;;
  }

  dimension: deaths2011 {
    type: number
    sql: ${TABLE}.DEATHS2011 ;;
  }

  dimension: deaths2012 {
    type: number
    sql: ${TABLE}.DEATHS2012 ;;
  }

  dimension: deaths2013 {
    type: number
    sql: ${TABLE}.DEATHS2013 ;;
  }

  dimension: deaths2014 {
    type: number
    sql: ${TABLE}.DEATHS2014 ;;
  }

  dimension: deaths2015 {
    type: number
    sql: ${TABLE}.DEATHS2015 ;;
  }

  dimension: deaths2016 {
    type: number
    sql: ${TABLE}.DEATHS2016 ;;
  }

  dimension: deaths2017 {
    type: number
    sql: ${TABLE}.DEATHS2017 ;;
  }

  dimension: deaths2018 {
    type: number
    sql: ${TABLE}.DEATHS2018 ;;
  }

  dimension: deaths2019 {
    type: number
    sql: ${TABLE}.DEATHS2019 ;;
  }

  dimension: division {
    type: number
    sql: ${TABLE}.DIVISION ;;
  }

  dimension: domesticmig2010 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2010 ;;
  }

  dimension: domesticmig2011 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2011 ;;
  }

  dimension: domesticmig2012 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2012 ;;
  }

  dimension: domesticmig2013 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2013 ;;
  }

  dimension: domesticmig2014 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2014 ;;
  }

  dimension: domesticmig2015 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2015 ;;
  }

  dimension: domesticmig2016 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2016 ;;
  }

  dimension: domesticmig2017 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2017 ;;
  }

  dimension: domesticmig2018 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2018 ;;
  }

  dimension: domesticmig2019 {
    type: number
    sql: ${TABLE}.DOMESTICMIG2019 ;;
  }

  dimension: estimatesbase2010 {
    type: number
    sql: ${TABLE}.ESTIMATESBASE2010 ;;
  }

  dimension: gqestimates2010 {
    type: number
    sql: ${TABLE}.GQESTIMATES2010 ;;
  }

  dimension: gqestimates2011 {
    type: number
    sql: ${TABLE}.GQESTIMATES2011 ;;
  }

  dimension: gqestimates2012 {
    type: number
    sql: ${TABLE}.GQESTIMATES2012 ;;
  }

  dimension: gqestimates2013 {
    type: number
    sql: ${TABLE}.GQESTIMATES2013 ;;
  }

  dimension: gqestimates2014 {
    type: number
    sql: ${TABLE}.GQESTIMATES2014 ;;
  }

  dimension: gqestimates2015 {
    type: number
    sql: ${TABLE}.GQESTIMATES2015 ;;
  }

  dimension: gqestimates2016 {
    type: number
    sql: ${TABLE}.GQESTIMATES2016 ;;
  }

  dimension: gqestimates2017 {
    type: number
    sql: ${TABLE}.GQESTIMATES2017 ;;
  }

  dimension: gqestimates2018 {
    type: number
    sql: ${TABLE}.GQESTIMATES2018 ;;
  }

  dimension: gqestimates2019 {
    type: number
    sql: ${TABLE}.GQESTIMATES2019 ;;
  }

  dimension: gqestimatesbase2010 {
    type: number
    sql: ${TABLE}.GQESTIMATESBASE2010 ;;
  }

  dimension: internationalmig2010 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2010 ;;
  }

  dimension: internationalmig2011 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2011 ;;
  }

  dimension: internationalmig2012 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2012 ;;
  }

  dimension: internationalmig2013 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2013 ;;
  }

  dimension: internationalmig2014 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2014 ;;
  }

  dimension: internationalmig2015 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2015 ;;
  }

  dimension: internationalmig2016 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2016 ;;
  }

  dimension: internationalmig2017 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2017 ;;
  }

  dimension: internationalmig2018 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2018 ;;
  }

  dimension: internationalmig2019 {
    type: number
    sql: ${TABLE}.INTERNATIONALMIG2019 ;;
  }

  dimension: naturalinc2010 {
    type: number
    sql: ${TABLE}.NATURALINC2010 ;;
  }

  dimension: naturalinc2011 {
    type: number
    sql: ${TABLE}.NATURALINC2011 ;;
  }

  dimension: naturalinc2012 {
    type: number
    sql: ${TABLE}.NATURALINC2012 ;;
  }

  dimension: naturalinc2013 {
    type: number
    sql: ${TABLE}.NATURALINC2013 ;;
  }

  dimension: naturalinc2014 {
    type: number
    sql: ${TABLE}.NATURALINC2014 ;;
  }

  dimension: naturalinc2015 {
    type: number
    sql: ${TABLE}.NATURALINC2015 ;;
  }

  dimension: naturalinc2016 {
    type: number
    sql: ${TABLE}.NATURALINC2016 ;;
  }

  dimension: naturalinc2017 {
    type: number
    sql: ${TABLE}.NATURALINC2017 ;;
  }

  dimension: naturalinc2018 {
    type: number
    sql: ${TABLE}.NATURALINC2018 ;;
  }

  dimension: naturalinc2019 {
    type: number
    sql: ${TABLE}.NATURALINC2019 ;;
  }

  dimension: netmig2010 {
    type: number
    sql: ${TABLE}.NETMIG2010 ;;
  }

  dimension: netmig2011 {
    type: number
    sql: ${TABLE}.NETMIG2011 ;;
  }

  dimension: netmig2012 {
    type: number
    sql: ${TABLE}.NETMIG2012 ;;
  }

  dimension: netmig2013 {
    type: number
    sql: ${TABLE}.NETMIG2013 ;;
  }

  dimension: netmig2014 {
    type: number
    sql: ${TABLE}.NETMIG2014 ;;
  }

  dimension: netmig2015 {
    type: number
    sql: ${TABLE}.NETMIG2015 ;;
  }

  dimension: netmig2016 {
    type: number
    sql: ${TABLE}.NETMIG2016 ;;
  }

  dimension: netmig2017 {
    type: number
    sql: ${TABLE}.NETMIG2017 ;;
  }

  dimension: netmig2018 {
    type: number
    sql: ${TABLE}.NETMIG2018 ;;
  }

  dimension: netmig2019 {
    type: number
    sql: ${TABLE}.NETMIG2019 ;;
  }

  dimension: npopchg_2010 {
    type: number
    sql: ${TABLE}.NPOPCHG_2010 ;;
  }

  dimension: npopchg_2011 {
    type: number
    sql: ${TABLE}.NPOPCHG_2011 ;;
  }

  dimension: npopchg_2012 {
    type: number
    sql: ${TABLE}.NPOPCHG_2012 ;;
  }

  dimension: npopchg_2013 {
    type: number
    sql: ${TABLE}.NPOPCHG_2013 ;;
  }

  dimension: npopchg_2014 {
    type: number
    sql: ${TABLE}.NPOPCHG_2014 ;;
  }

  dimension: npopchg_2015 {
    type: number
    sql: ${TABLE}.NPOPCHG_2015 ;;
  }

  dimension: npopchg_2016 {
    type: number
    sql: ${TABLE}.NPOPCHG_2016 ;;
  }

  dimension: npopchg_2017 {
    type: number
    sql: ${TABLE}.NPOPCHG_2017 ;;
  }

  dimension: npopchg_2018 {
    type: number
    sql: ${TABLE}.NPOPCHG_2018 ;;
  }

  dimension: npopchg_2019 {
    type: number
    sql: ${TABLE}.NPOPCHG_2019 ;;
  }

  dimension: popestimate2010 {
    type: number
    sql: ${TABLE}.POPESTIMATE2010 ;;
  }

  dimension: popestimate2011 {
    type: number
    sql: ${TABLE}.POPESTIMATE2011 ;;
  }

  dimension: popestimate2012 {
    type: number
    sql: ${TABLE}.POPESTIMATE2012 ;;
  }

  dimension: popestimate2013 {
    type: number
    sql: ${TABLE}.POPESTIMATE2013 ;;
  }

  dimension: popestimate2014 {
    type: number
    sql: ${TABLE}.POPESTIMATE2014 ;;
  }

  dimension: popestimate2015 {
    type: number
    sql: ${TABLE}.POPESTIMATE2015 ;;
  }

  dimension: popestimate2016 {
    type: number
    sql: ${TABLE}.POPESTIMATE2016 ;;
  }

  dimension: popestimate2017 {
    type: number
    sql: ${TABLE}.POPESTIMATE2017 ;;
  }

  dimension: popestimate2018 {
    type: number
    sql: ${TABLE}.POPESTIMATE2018 ;;
  }

  dimension: popestimate2019 {
    type: number
    sql: ${TABLE}.POPESTIMATE2019 ;;
  }

  dimension: rbirth2011 {
    type: number
    sql: ${TABLE}.RBIRTH2011 ;;
  }

  dimension: rbirth2012 {
    type: number
    sql: ${TABLE}.RBIRTH2012 ;;
  }

  dimension: rbirth2013 {
    type: number
    sql: ${TABLE}.RBIRTH2013 ;;
  }

  dimension: rbirth2014 {
    type: number
    sql: ${TABLE}.RBIRTH2014 ;;
  }

  dimension: rbirth2015 {
    type: number
    sql: ${TABLE}.RBIRTH2015 ;;
  }

  dimension: rbirth2016 {
    type: number
    sql: ${TABLE}.RBIRTH2016 ;;
  }

  dimension: rbirth2017 {
    type: number
    sql: ${TABLE}.RBIRTH2017 ;;
  }

  dimension: rbirth2018 {
    type: number
    sql: ${TABLE}.RBIRTH2018 ;;
  }

  dimension: rbirth2019 {
    type: number
    sql: ${TABLE}.RBIRTH2019 ;;
  }

  dimension: rdeath2011 {
    type: number
    sql: ${TABLE}.RDEATH2011 ;;
  }

  dimension: rdeath2012 {
    type: number
    sql: ${TABLE}.RDEATH2012 ;;
  }

  dimension: rdeath2013 {
    type: number
    sql: ${TABLE}.RDEATH2013 ;;
  }

  dimension: rdeath2014 {
    type: number
    sql: ${TABLE}.RDEATH2014 ;;
  }

  dimension: rdeath2015 {
    type: number
    sql: ${TABLE}.RDEATH2015 ;;
  }

  dimension: rdeath2016 {
    type: number
    sql: ${TABLE}.RDEATH2016 ;;
  }

  dimension: rdeath2017 {
    type: number
    sql: ${TABLE}.RDEATH2017 ;;
  }

  dimension: rdeath2018 {
    type: number
    sql: ${TABLE}.RDEATH2018 ;;
  }

  dimension: rdeath2019 {
    type: number
    sql: ${TABLE}.RDEATH2019 ;;
  }

  dimension: rdomesticmig2011 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2011 ;;
  }

  dimension: rdomesticmig2012 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2012 ;;
  }

  dimension: rdomesticmig2013 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2013 ;;
  }

  dimension: rdomesticmig2014 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2014 ;;
  }

  dimension: rdomesticmig2015 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2015 ;;
  }

  dimension: rdomesticmig2016 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2016 ;;
  }

  dimension: rdomesticmig2017 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2017 ;;
  }

  dimension: rdomesticmig2018 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2018 ;;
  }

  dimension: rdomesticmig2019 {
    type: number
    sql: ${TABLE}.RDOMESTICMIG2019 ;;
  }

  dimension: region {
    type: number
    sql: ${TABLE}.REGION ;;
  }

  dimension: residual2010 {
    type: number
    sql: ${TABLE}.RESIDUAL2010 ;;
  }

  dimension: residual2011 {
    type: number
    sql: ${TABLE}.RESIDUAL2011 ;;
  }

  dimension: residual2012 {
    type: number
    sql: ${TABLE}.RESIDUAL2012 ;;
  }

  dimension: residual2013 {
    type: number
    sql: ${TABLE}.RESIDUAL2013 ;;
  }

  dimension: residual2014 {
    type: number
    sql: ${TABLE}.RESIDUAL2014 ;;
  }

  dimension: residual2015 {
    type: number
    sql: ${TABLE}.RESIDUAL2015 ;;
  }

  dimension: residual2016 {
    type: number
    sql: ${TABLE}.RESIDUAL2016 ;;
  }

  dimension: residual2017 {
    type: number
    sql: ${TABLE}.RESIDUAL2017 ;;
  }

  dimension: residual2018 {
    type: number
    sql: ${TABLE}.RESIDUAL2018 ;;
  }

  dimension: residual2019 {
    type: number
    sql: ${TABLE}.RESIDUAL2019 ;;
  }

  dimension: rinternationalmig2011 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2011 ;;
  }

  dimension: rinternationalmig2012 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2012 ;;
  }

  dimension: rinternationalmig2013 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2013 ;;
  }

  dimension: rinternationalmig2014 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2014 ;;
  }

  dimension: rinternationalmig2015 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2015 ;;
  }

  dimension: rinternationalmig2016 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2016 ;;
  }

  dimension: rinternationalmig2017 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2017 ;;
  }

  dimension: rinternationalmig2018 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2018 ;;
  }

  dimension: rinternationalmig2019 {
    type: number
    sql: ${TABLE}.RINTERNATIONALMIG2019 ;;
  }

  dimension: rnaturalinc2011 {
    type: number
    sql: ${TABLE}.RNATURALINC2011 ;;
  }

  dimension: rnaturalinc2012 {
    type: number
    sql: ${TABLE}.RNATURALINC2012 ;;
  }

  dimension: rnaturalinc2013 {
    type: number
    sql: ${TABLE}.RNATURALINC2013 ;;
  }

  dimension: rnaturalinc2014 {
    type: number
    sql: ${TABLE}.RNATURALINC2014 ;;
  }

  dimension: rnaturalinc2015 {
    type: number
    sql: ${TABLE}.RNATURALINC2015 ;;
  }

  dimension: rnaturalinc2016 {
    type: number
    sql: ${TABLE}.RNATURALINC2016 ;;
  }

  dimension: rnaturalinc2017 {
    type: number
    sql: ${TABLE}.RNATURALINC2017 ;;
  }

  dimension: rnaturalinc2018 {
    type: number
    sql: ${TABLE}.RNATURALINC2018 ;;
  }

  dimension: rnaturalinc2019 {
    type: number
    sql: ${TABLE}.RNATURALINC2019 ;;
  }

  dimension: rnetmig2011 {
    type: number
    sql: ${TABLE}.RNETMIG2011 ;;
  }

  dimension: rnetmig2012 {
    type: number
    sql: ${TABLE}.RNETMIG2012 ;;
  }

  dimension: rnetmig2013 {
    type: number
    sql: ${TABLE}.RNETMIG2013 ;;
  }

  dimension: rnetmig2014 {
    type: number
    sql: ${TABLE}.RNETMIG2014 ;;
  }

  dimension: rnetmig2015 {
    type: number
    sql: ${TABLE}.RNETMIG2015 ;;
  }

  dimension: rnetmig2016 {
    type: number
    sql: ${TABLE}.RNETMIG2016 ;;
  }

  dimension: rnetmig2017 {
    type: number
    sql: ${TABLE}.RNETMIG2017 ;;
  }

  dimension: rnetmig2018 {
    type: number
    sql: ${TABLE}.RNETMIG2018 ;;
  }

  dimension: rnetmig2019 {
    type: number
    sql: ${TABLE}.RNETMIG2019 ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.STATE ;;
  }

  dimension: stname {
    type: string
    sql: ${TABLE}.STNAME ;;
  }

  dimension: sumlev {
    type: number
    sql: ${TABLE}.SUMLEV ;;
  }

  measure: count {
    type: count
    drill_fields: [stname, ctyname]
  }
}
