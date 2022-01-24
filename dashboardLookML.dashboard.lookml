- dashboard: dashboardlookml
  title: nameforUI
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: New Tile
    name: New Tile
    model: proyecto_copia
    explore: products
    type: single_value
    fields: [products.brand3]
    filters: {}
    sorts: [products.brand3]
    limit: 500
    query_timezone: America/Mexico_City
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Brand3: products.brand3
    row: 0
    col: 16
    width: 8
    height: 6
  - title: nuevas visuali
    name: nuevas visuali
    model: proyecto_copia
    explore: inventory_items
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [products.count, inventory_items.count]
    sorts: [products.count desc]
    limit: 500
    query_timezone: America/Mexico_City
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Cost: inventory_items.cost
      Brand3: products.brand3
    row: 0
    col: 0
    width: 8
    height: 6
  - title: timeline(grafica)
    name: timeline(grafica)
    model: proyecto_copia
    explore: order_items
    type: looker_timeline
    fields: [products.brand, inventory_items.created_date, inventory_items.sold_date,
      products.count]
    filters:
      products.brand: T%
    sorts: [products.count desc]
    limit: 1
    query_timezone: America/Mexico_City
    groupBars: true
    labelSize: 10pt
    showLegend: true
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
      Cost: inventory_items.cost
      Brand3: products.brand3
    row: 18
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: proyecto_copia
    explore: order_items
    type: looker_grid
    fields: [nombre, orders.count]
    filters:
      users.state: ''
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: dimension, expression: 'concat(${users.first_name},
          " ",${users.last_name})', label: nombre, value_format: !!null '', value_format_name: !!null '',
        dimension: nombre, _kind_hint: dimension, _type_hint: string}, {category: table_calculation,
        expression: 'if(offset(${orders.count},0)=offset(${orders.count},1),"igualanterior","dif")',
        label: diferentes con offset, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: diferentes_con_offset, _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Cost: inventory_items.cost
      Brand3: products.brand3
    row: 24
    col: 0
    width: 8
    height: 6
  - title: grafica de barras
    name: grafica de barras
    model: proyecto_copia
    explore: order_items
    type: looker_column
    fields: [orders.created_year, users.gender, order_items.count, orders.count]
    pivots: [users.gender]
    fill_fields: [orders.created_year]
    filters:
      orders.created_year: 2016/01/01 to 2017/12/31
    sorts: [orders.created_year desc, users.gender]
    limit: 500
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
    trellis: pivot
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
    color_application:
      collection_id: 71861448-6206-44d9-a4fb-20a90ffad9c7
      palette_id: 2f38afee-740b-4043-ac25-45b0b08d79ac
      options:
        steps: 5
    series_types: {}
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
    defaults_version: 1
    listen:
      Cost: inventory_items.cost
      Brand3: products.brand3
    row: 12
    col: 0
    width: 8
    height: 6
  - title: conpivote
    name: conpivote
    model: proyecto_copia
    explore: order_items
    type: looker_grid
    fields: [inventory_items.count, inventory_items.sold_date, products.brand]
    pivots: [inventory_items.sold_date]
    fill_fields: [inventory_items.sold_date]
    filters: {}
    sorts: [inventory_items.count desc 9, inventory_items.sold_date]
    limit: 500
    row_total: right
    dynamic_fields: [{category: dimension, expression: 'concat(${users.first_name},
          " ",${users.last_name})', label: nombre, value_format: !!null '', value_format_name: !!null '',
        dimension: nombre, _kind_hint: dimension, _type_hint: string}, {category: table_calculation,
        label: suma, value_format: !!null '', value_format_name: Default formatting,
        calculation_type: running_total, table_calculation: suma, args: [inventory_items.count],
        _kind_hint: measure, _type_hint: number, is_disabled: true}]
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
    show_sql_query_menu_options: false
    column_order: ["$$$_row_total_$$$_inventory_items.count", products.brand, 2014-01-02_inventory_items.count,
      2014-01-01_inventory_items.count]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      inventory_items.count:
        is_active: true
    series_column_widths:
      products.brand: 512
    pinned_columns:
      "$$$_row_total_$$$_inventory_items.count": left
      products.brand: left
    listen:
      Sold Date: inventory_items.sold_date
      Cost: inventory_items.cost
      Brand3: products.brand3
    row: 6
    col: 0
    width: 23
    height: 6
  - title: New Tile
    name: New Tile (3)
    model: proyecto_copia
    explore: order_items
    type: single_value
    fields: [order_items.sale_price_two]
    filters:
      order_items.id: '227806'
      users.state: ''
    sorts: [order_items.sale_price_two]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${order_items.sale_price_two}",
        label: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa,
        _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#7767E5"
    single_value_title: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    show_view_names: false
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
    listen:
      Brand3: products.brand3
      Dimension Picker: orders.dimension_picker
    row: 36
    col: 0
    width: 4
    height: 5
  - title: pivot-measure
    name: pivot-measure
    model: proyecto_copia
    explore: inventory_items
    type: looker_grid
    fields: [new_measure, products.brand]
    pivots: [products.brand]
    filters:
      products.brand: a%
    sorts: [new_measure desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: New Measure,
        value_format: !!null '', value_format_name: !!null '', based_on: products.item_name,
        _kind_hint: measure, measure: new_measure, type: list, _type_hint: list}]
    query_timezone: America/Mexico_City
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      new_measure: 190
    series_cell_visualizations: {}
    listen:
      Cost: inventory_items.cost
      Brand3: products.brand3
    row: 30
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (4)
    model: proyecto_copia
    explore: order_items
    type: looker_grid
    fields: [orders.count, products.brand]
    filters:
      products.brand: ''
    sorts: [orders.count desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields: [{category: dimension, expression: 'concat(${users.first_name},
          " ",${users.last_name})', label: nombre, value_format: !!null '', value_format_name: !!null '',
        dimension: nombre, _kind_hint: dimension, _type_hint: string}, {category: table_calculation,
        expression: 'if(offset(${orders.count},0)=offset(${orders.count},1),"igualanterior","dif")',
        label: diferentes con offset, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: diferentes_con_offset, _type_hint: string},
      {category: table_calculation, expression: 'offset(${orders.count},0)+offset(${orders.count},-1)',
        label: suma con el anterior, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: suma_con_el_anterior, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    listen:
      Dimension Picker: orders.dimension_picker
      Brand3 (2): products.brand3
    row: 41
    col: 0
    width: 8
    height: 6
  - title: dimension dinamica
    name: dimension dinamica
    model: proyecto_copia
    explore: order_items
    type: looker_column
    fields: [orders.dimensiondinamica, orders.count]
    filters: {}
    sorts: [orders.count desc 0]
    limit: 500
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
    listen:
      Dimension Picker: orders.dimension_picker
      Brand3 (2): products.brand3
    row: 0
    col: 8
    width: 8
    height: 6
  - title: pie
    name: pie
    model: system__activity
    explore: history
    type: looker_pie
    fields: [history.status, history.average_runtime]
    filters:
      history.result_source: query
      history.source: "-sqlrunner,-regenerator"
      user.name: ''
    sorts: [history.average_runtime desc, history.status]
    limit: 10
    column_limit: 50
    total: true
    value_labels: legend
    label_type: labPer
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
    listen: {}
    row: 12
    col: 9
    width: 11
    height: 7
  - title: max an dif date
    name: max an dif date
    model: proyecto_copia
    explore: orders
    type: looker_grid
    fields: [users.first_name, orders.diffecha, orders.maximafecha]
    sorts: [orders.diffecha desc 0]
    limit: 500
    query_timezone: America/Mexico_City
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row:
    col:
    width:
    height:
  filters:
  - name: Cost
    title: Cost
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: proyecto_copia
    explore: inventory_items
    listens_to_filters: []
    field: inventory_items.cost
  - name: Sold Date
    title: Sold Date
    type: field_filter
    default_value: this week
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: proyecto_copia
    explore: inventory_items
    listens_to_filters: []
    field: inventory_items.sold_date
  - name: Brand3
    title: Brand3
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - A:X Armani Exchange
    model: proyecto_copia
    explore: products
    listens_to_filters: []
    field: products.brand3
  - name: Dimension Picker
    title: Dimension Picker
    type: field_filter
    default_value: statusss
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: proyecto_copia
    explore: order_items
    listens_to_filters: []
    field: orders.dimension_picker
  - name: Brand3 (2)
    title: Brand3 (2)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: proyecto_copia
    explore: inventory_items
    listens_to_filters: []
    field: products.brand3
