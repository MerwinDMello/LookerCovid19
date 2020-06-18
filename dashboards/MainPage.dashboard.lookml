- dashboard: covid19dashboard
  title: Covid19Dashboard
  layout: newspaper
  elements:
  - title: Cumulative Cases
    name: Cumulative Cases
    model: covid19trends
    explore: bqpd_covid19_jhu_us_summarized_by_state
    type: single_value
    fields: [bqpd_covid19_jhu_us_summarized_by_state.total_cases]
    filters:
      bqpd_covid19_jhu_us_summarized_by_state.date_date: 2 days
      bqpd_covid19_jhu_us_summarized_by_state.map_plotted_by_states_territories: Y
    sorts: [bqpd_covid19_jhu_us_summarized_by_state.total_cases desc]
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
    series_types: {}
    show_view_names: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      State: bqpd_covid19_jhu_us_summarized_by_state.us_state
    row: 0
    col: 0
    width: 5
    height: 2
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    model: covid19trends
    explore: bqpd_covid19_jhu_us_summarized_by_state
    listens_to_filters: []
    field: bqpd_covid19_jhu_us_summarized_by_state.us_state
