- dashboard: covid19_state__county
  title: Covid19 State & County
  layout: newspaper
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div class="vis">
      <div class="vis-single-value" style="background-color:#F7F5FF;font-size:25px;text-align:center;padding:5px">
      Case Summary
      </div>
      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div class="vis">
      <div class="vis-single-value" style="background-color:#F7F5FF;font-size:25px;text-align:center;padding:5px">
      Mobility Summary
      </div>
      </div>
    row: 57
    col: 0
    width: 24
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div class="vis">
      <div class="vis-single-value" style="background-color:#F7F5FF;font-size:25px;text-align:center;padding:5px">
      Weather Summary
      </div>
      </div>
    row: 65
    col: 0
    width: 24
    height: 2
  - name: Total Deaths
    title: Total Deaths
    model: covid19trends
    explore: jhu_uscovid
    type: single_value
    fields: [jhu_uscovid.dynamic_measure_deaths]
    filters: {}
    limit: 500
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 2
    col: 6
    width: 6
    height: 3
  - name: Total Cases
    title: Total Cases
    model: covid19trends
    explore: jhu_uscovid
    type: single_value
    fields: [jhu_uscovid.dynamic_measure_cases]
    filters: {}
    limit: 500
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 2
    col: 0
    width: 6
    height: 3
  - name: Daily Cases
    title: Daily Cases
    model: covid19trends
    explore: jhu_uscovid
    type: single_value
    fields: [jhu_uscovid.actual_date, jhu_uscovid.dynamic_measure_cases]
    filters: {}
    sorts: [jhu_uscovid.actual_date desc]
    limit: 5000
    dynamic_fields: [{table_calculation: max_actual_date, label: Max_Actual_Date,
        expression: 'max(diff_days(now(),${jhu_uscovid.actual_date}))=diff_days(now(),${jhu_uscovid.actual_date})',
        value_format: !!null '', value_format_name: !!null '', is_disabled: false,
        _kind_hint: dimension, _type_hint: yesno}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [jhu_uscovid.actual_date]
    hidden_points_if_no: [max_actual_date]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 2
    col: 12
    width: 6
    height: 3
  - name: Cases by Day
    title: Cases by Day
    model: covid19trends
    explore: jhu_uscovid
    type: looker_column
    fields: [jhu_uscovid.reporting_date, jhu_uscovid.dynamic_measure_cases, jhu_uscovid.dynamic_measure_deaths]
    filters: {}
    sorts: [jhu_uscovid.reporting_date]
    limit: 5000
    dynamic_fields: [{table_calculation: movingaverage, label: MovingAverage, expression: 'mean(offset_list(${jhu_uscovid.dynamic_measure_cases},-6,7))',
        value_format: !!null '', value_format_name: decimal_0, is_disabled: false,
        _kind_hint: measure, _type_hint: number}]
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: jhu_uscovid.total_daily_cases,
            id: jhu_uscovid.total_daily_cases, name: Daily Cases}, {axisId: jhu_uscovid.total_daily_deaths,
            id: jhu_uscovid.total_daily_deaths, name: Daily Deaths}, {axisId: movingaverage,
            id: movingaverage, name: MovingAverage}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      movingaverage: line
    trend_lines: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 12
    col: 12
    width: 12
    height: 6
  - name: Daily Deaths
    title: Daily Deaths
    model: covid19trends
    explore: jhu_uscovid
    type: single_value
    fields: [jhu_uscovid.actual_date, jhu_uscovid.dynamic_measure_deaths]
    filters: {}
    sorts: [jhu_uscovid.actual_date desc]
    limit: 5000
    dynamic_fields: [{table_calculation: max_actual_date, label: Max_Actual_Date,
        expression: 'max(diff_days(now(),${jhu_uscovid.actual_date}))=diff_days(now(),${jhu_uscovid.actual_date})',
        value_format: !!null '', value_format_name: !!null '', is_disabled: false,
        _kind_hint: dimension, _type_hint: yesno}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [jhu_uscovid.actual_date]
    hidden_points_if_no: [max_actual_date]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 2
    col: 18
    width: 6
    height: 3
  - name: 'Daily Cases: US Counties'
    title: 'Daily Cases: US Counties'
    model: covid19trends
    explore: jhu_uscovid
    type: looker_map
    fields: [geo_us_counties.mapped_county, geo_us_counties.county_name, geo_us_states.state_name,
      jhu_uscovid.dynamic_measure_cases]
    filters:
      jhu_uscovid.map_plotted_by_county: 'Yes'
      jhu_uscovid.actual_date: 1 days
    limit: 5000
    query_timezone: UTC
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: false
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 35.782170703266075
    map_longitude: -84.7668465971947
    map_zoom: 6
    defaults_version: 1
    series_types: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    hidden_points_if_no: [max_actual_date]
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Population Scale: jhu_uscovid.population_scale
    row: 5
    col: 12
    width: 12
    height: 7
  - name: Mobility Trend
    title: Mobility Trend
    model: covid19trends
    explore: mobility_report
    type: looker_line
    fields: [mobility_report.grocery_and_pharmacy, mobility_report.parks, mobility_report.residential,
      mobility_report.retail_and_recreation, mobility_report.transit_stations, mobility_report.workplaces,
      mobility_report.mobility_report_date]
    filters:
      mobility_report.location_category: County
    sorts: [mobility_report.mobility_report_date]
    limit: 500
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: mobility_report.actual_date
    row: 59
    col: 0
    width: 24
    height: 6
  - name: Cumulative Cases and Deaths
    title: Cumulative Cases and Deaths
    model: covid19trends
    explore: jhu_uscovid
    type: looker_line
    fields: [jhu_uscovid.reporting_date, jhu_uscovid.dynamic_measure_cases, jhu_uscovid.dynamic_measure_deaths]
    filters: {}
    sorts: [jhu_uscovid.reporting_date]
    limit: 500
    dynamic_fields: [{table_calculation: total_cases, label: Total Cases, expression: 'running_total(${jhu_uscovid.dynamic_measure_cases})',
        value_format: !!null '', value_format_name: !!null '', is_disabled: false,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_deaths,
        label: Total Deaths, expression: 'running_total(${jhu_uscovid.dynamic_measure_deaths})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 12
    col: 0
    width: 12
    height: 6
  - name: 'Total Cases: US Counties'
    title: 'Total Cases: US Counties'
    model: covid19trends
    explore: jhu_uscovid
    type: looker_map
    fields: [geo_us_counties.mapped_county, geo_us_counties.county_name, geo_us_states.state_name,
      jhu_uscovid.dynamic_measure_cases]
    filters:
      jhu_uscovid.map_plotted_by_county: 'Yes'
    limit: 5000
    query_timezone: UTC
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: false
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 39.36827914916014
    map_longitude: -76.81640625000001
    map_zoom: 2
    defaults_version: 1
    series_types: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 5
    col: 0
    width: 12
    height: 7
  - name: Lowest Recorded Temperature
    title: Lowest Recorded Temperature
    model: covid19trends
    explore: weather_history
    type: single_value
    fields: [geo_us_counties.county_name, weather_history.minimum_temp]
    sorts: [weather_history.minimum_temp]
    limit: 5000
    dynamic_fields: [{table_calculation: lowest_temperature, label: Lowest_Temperature,
        expression: 'min(${weather_history.minimum_temp}) = ${weather_history.minimum_temp}',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_points_if_no: [lowest_temperature]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: weather_history.actual_date
    row: 67
    col: 8
    width: 8
    height: 6
  - name: Average Humidity
    title: Average Humidity
    model: covid19trends
    explore: weather_history
    type: looker_map
    fields: [geo_us_counties.mapped_county, geo_us_counties.county_name, geo_us_states.state_name,
      weather_history.average_humidity]
    sorts: [weather_history.average_humidity desc]
    limit: 5000
    query_timezone: America/Chicago
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: false
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: weather_history.actual_date
    row: 73
    col: 0
    width: 8
    height: 6
  - name: Average Temperature
    title: Average Temperature
    model: covid19trends
    explore: weather_history
    type: looker_map
    fields: [geo_us_counties.mapped_county, geo_us_counties.county_name, geo_us_states.state_name,
      weather_history.average_temp]
    sorts: [weather_history.average_temp desc]
    limit: 5000
    query_timezone: America/Chicago
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: false
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.695409308571676
    map_longitude: -91.78711026906969
    map_zoom: 3
    defaults_version: 1
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: weather_history.actual_date
    row: 67
    col: 0
    width: 8
    height: 6
  - name: Highest Recorded Temperature
    title: Highest Recorded Temperature
    model: covid19trends
    explore: weather_history
    type: single_value
    fields: [geo_us_counties.county_name, weather_history.maximum_temp]
    sorts: [weather_history.maximum_temp desc]
    limit: 5000
    dynamic_fields: [{table_calculation: highest_temperature, label: Highest_Temperature,
        expression: 'max(${weather_history.maximum_temp}) = ${weather_history.maximum_temp}',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_points_if_no: [lowest_temperature, highest_temperature]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: weather_history.actual_date
    row: 67
    col: 16
    width: 8
    height: 6
  - name: Lowest Recorded Humidity
    title: Lowest Recorded Humidity
    model: covid19trends
    explore: weather_history
    type: single_value
    fields: [geo_us_counties.county_name, weather_history.minimum_humidity]
    sorts: [weather_history.minimum_humidity 0, geo_us_counties.county_name]
    limit: 5000
    dynamic_fields: [{table_calculation: lowest_humidity, label: Lowest_Humidity,
        expression: 'min(${weather_history.minimum_humidity}) = ${weather_history.minimum_humidity}',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_points_if_no: [lowest_temperature, lowest_humidity]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: weather_history.actual_date
    row: 73
    col: 8
    width: 8
    height: 6
  - name: Highest Recorded Humidity
    title: Highest Recorded Humidity
    model: covid19trends
    explore: weather_history
    type: single_value
    fields: [geo_us_counties.county_name, weather_history.maximum_humidity]
    sorts: [weather_history.maximum_humidity desc 0, geo_us_counties.county_name]
    limit: 5000
    dynamic_fields: [{table_calculation: highest_humidity, label: Highest_Humidity,
        expression: 'max(${weather_history.maximum_humidity}) = ${weather_history.maximum_humidity}',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_points_if_no: [lowest_temperature, highest_temperature, highest_humidity]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: weather_history.actual_date
    row: 73
    col: 16
    width: 8
    height: 6
  - name: County Summary - Covid19
    title: County Summary - Covid19
    merged_queries:
    - model: covid19trends
      explore: jhu_uscovid
      type: looker_grid
      fields: [jhu_uscovid.total_cumulative_cases, jhu_uscovid.total_cumulative_deaths,
        jhu_uscovid.us_county]
      filters:
        jhu_uscovid.map_plotted_by_county: 'Yes'
      sorts: [jhu_uscovid.total_cumulative_cases desc 0, jhu_uscovid.total_cumulative_deaths
          desc]
      limit: 5000
      query_timezone: America/Chicago
      show_view_names: false
      show_row_numbers: false
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_cell_visualizations:
        jhu_uscovid.total_cumulative_cases:
          is_active: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
    - model: covid19trends
      explore: jhu_uscovid
      type: looker_grid
      fields: [jhu_uscovid.us_county, jhu_uscovid.total_daily_cases, jhu_uscovid.total_daily_deaths]
      filters:
        jhu_uscovid.map_plotted_by_county: 'Yes'
        jhu_uscovid.actual_date: 1 days
      sorts: [jhu_uscovid.total_daily_cases desc]
      limit: 5000
      query_timezone: America/Chicago
      show_view_names: false
      show_row_numbers: false
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_cell_visualizations:
        jhu_uscovid.total_daily_cases:
          is_active: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: jhu_uscovid.us_county
        source_field_name: jhu_uscovid.us_county
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      jhu_uscovid.total_cumulative_cases:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 200, background_color: "#cf3943",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: 8e54aa44-5964-5a7e-7911-575c68315690, label: Custom, type: continuous,
            stops: [{color: "#cf3943", offset: 0}, {color: "#f0971a", offset: 33.333333333333336},
              {color: "#ffcf1a", offset: 66.66666666666667}, {color: "#1aa75d", offset: 100}]},
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [jhu_uscovid.total_cumulative_cases]},
      {type: greater than, value: 100, background_color: "#f0971a", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [jhu_uscovid.total_cumulative_cases]},
      {type: greater than, value: 50, background_color: "#ffcf1a", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [jhu_uscovid.total_cumulative_cases]},
      {type: less than, value: 51, background_color: "#1aa75d", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [jhu_uscovid.total_cumulative_cases]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    sorts: [jhu_uscovid.total_cumulative_cases desc]
    listen:
    - Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    - Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Population Scale: jhu_uscovid.population_scale
    row: 18
    col: 0
    width: 24
    height: 33
  - title: 'Color Scheme: Counties'
    name: 'Color Scheme: Counties'
    model: covid19trends
    explore: jhu_uscovid
    type: looker_map
    fields: [geo_us_counties.mapped_county, geo_us_counties.county_name, geo_us_states.state_name,
      jhu_uscovid.total_cumulative_cases]
    filters:
      jhu_uscovid.map_plotted_by_county: 'Yes'
    sorts: [jhu_uscovid.total_cumulative_cases desc]
    limit: 5000
    query_timezone: UTC
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: false
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 39.36827914916014
    map_longitude: -76.81640625000001
    map_zoom: 2
    map_value_colors: ["#1aa75d", "#ffcf1a", "#f0971a", "#cf3943"]
    defaults_version: 1
    series_types: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    listen:
      Us State: geo_us_states.state_name
      County: geo_us_counties.county_name
      Actual Date: jhu_uscovid.actual_date
      Population Scale: jhu_uscovid.population_scale
    row: 51
    col: 0
    width: 12
    height: 6
  filters:
  - name: Us State
    title: Us State
    type: field_filter
    default_value: Oklahoma
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: covid19trends
    explore: jhu_uscovid
    listens_to_filters: []
    field: geo_us_states.state_name
  - name: County
    title: County
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: covid19trends
    explore: jhu_uscovid
    listens_to_filters: [Us State]
    field: geo_us_counties.county_name
  - name: Actual Date
    title: Actual Date
    type: field_filter
    default_value: 14 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: covid19trends
    explore: jhu_uscovid
    listens_to_filters: []
    field: jhu_uscovid.actual_date
  - name: Population Scale
    title: Population Scale
    type: field_filter
    default_value: total^_numbers
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: covid19trends
    explore: jhu_uscovid
    listens_to_filters: []
    field: jhu_uscovid.population_scale
