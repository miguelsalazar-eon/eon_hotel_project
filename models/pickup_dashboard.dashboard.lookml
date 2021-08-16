- dashboard: pickup
  title: Pick-Up
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: ''
    name: ''
    model: Excellent_Produccion
    explore: table_pickup
    type: looker_grid
    fields: [table_pickup.hotel_id, table_pickup.count_codreservaF1, table_pickup.count_codreservaF2,
      table_pickup.crecimiento, table_pickup.aniomesentrada]
    pivots: [table_pickup.aniomesentrada]
    filters: {}
    sorts: [table_pickup.aniomesentrada]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      table_pickup.count_codreservaF1: Reservas Fecha Inicio
      table_pickup.count_codreservaF2: Reservas Fecha Final
      table_pickup.aniomesentrada: Año-Mes Ocupación
    series_column_widths:
      table_pickup.hotel_id: 163
    series_cell_visualizations:
      table_pickup.count_codreservaF1:
        is_active: false
    series_text_format:
      table_pickup.aniomesentrada:
        align: left
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: c65a64ce-7f46-476b-a320-41345941e5b1, options: {steps: 20, reverse: true,
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          table_pickup.count_codreservaF1, table_pickup.count_codreservaF2]}, {type: along
          a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: c65a64ce-7f46-476b-a320-41345941e5b1,
          options: {steps: 20, reverse: true, stepped: true}}, bold: false, italic: false,
        strikethrough: false, fields: [table_pickup.crecimiento]}]
    defaults_version: 1
    pinned_columns:
      table_pickup.hotel_id: left
    column_order: []
    listen:
      Dimensión: table_pickup.main_dim_selector
      Fecha Inicio: table_pickup.fecha_inicio
      Fecha Final: table_pickup.fecha_final
    row: 16
    col: 0
    width: 24
    height: 6
  - title: Pick Up por Tipo Habitación
    name: Pick Up por Tipo Habitación
    model: Excellent_Produccion
    explore: table_pickup
    type: looker_grid
    fields: [table_pickup.tipohabitacionuso_id, table_pickup.crecimiento, table_pickup.count_codreservaF1,
      table_pickup.count_codreservaF2]
    filters: {}
    sorts: [table_pickup.count_codreservaF1 desc]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    show_sql_query_menu_options: false
    column_order: [table_pickup.tipohabitacionuso_id, table_pickup.count_codreservaF1,
      table_pickup.count_codreservaF2, table_pickup.crecimiento]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      table_pickup.crecimiento:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF2:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF1:
        is_active: true
        palette:
          palette_id: c65a64ce-7f46-476b-a320-41345941e5b1
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    series_text_format:
      table_pickup.tipohabitacionuso_id:
        bold: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: table_pickup.count_codreservaF1,
            id: table_pickup.count_codreservaF1, name: Reservas F1}, {axisId: table_pickup.count_codreservaF2,
            id: table_pickup.count_codreservaF2, name: Reservas F2}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: table_pickup.crecimiento,
            id: table_pickup.crecimiento, name: "% Crecimiento"}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      table_pickup.crecimiento: "#EA4335"
      table_pickup.count_codreservaF2: "#12B5CB"
      table_pickup.count_codreservaF1: "#1A73E8"
    series_point_styles: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    title_hidden: true
    listen:
      Dimensión: table_pickup.main_dim_selector
      Fecha Inicio: table_pickup.fecha_inicio
      Fecha Final: table_pickup.fecha_final
    row: 4
    col: 14
    width: 10
    height: 10
  - title: Pick Up por Canal
    name: Pick Up por Canal
    model: Excellent_Produccion
    explore: table_pickup
    type: looker_column
    fields: [table_pickup.canal, table_pickup.count_codreservaF1, table_pickup.count_codreservaF2,
      table_pickup.crecimiento]
    filters: {}
    sorts: [table_pickup.count_codreservaF1 desc]
    limit: 500
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: table_pickup.count_codreservaF1,
            id: table_pickup.count_codreservaF1, name: Reservas F1}, {axisId: table_pickup.count_codreservaF2,
            id: table_pickup.count_codreservaF2, name: Reservas F2}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: table_pickup.crecimiento,
            id: table_pickup.crecimiento, name: "% Crecimiento"}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types:
      table_pickup.crecimiento: line
    series_colors:
      table_pickup.crecimiento: "#EA4335"
      table_pickup.count_codreservaF2: "#12B5CB"
      table_pickup.count_codreservaF1: "#1A73E8"
    series_point_styles: {}
    show_dropoff: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    title_hidden: true
    listen:
      Dimensión: table_pickup.main_dim_selector
      Fecha Inicio: table_pickup.fecha_inicio
      Fecha Final: table_pickup.fecha_final
    row: 6
    col: 0
    width: 14
    height: 8
  - title: Reservaciones F2
    name: Reservaciones F2
    model: Excellent_Produccion
    explore: table_pickup
    type: single_value
    fields: [table_pickup.count_codreservaF2]
    filters: {}
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    custom_color: "#E8710A"
    single_value_title: Reservaciones Fecha Final
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_cell_visualizations:
      table_pickup.crecimiento:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF2:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF1:
        is_active: true
        palette:
          palette_id: c65a64ce-7f46-476b-a320-41345941e5b1
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    series_text_format:
      table_pickup.tipohabitacionuso_id:
        bold: true
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: table_pickup.count_codreservaF1,
            id: table_pickup.count_codreservaF1, name: Reservas F1}, {axisId: table_pickup.count_codreservaF2,
            id: table_pickup.count_codreservaF2, name: Reservas F2}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: table_pickup.crecimiento,
            id: table_pickup.crecimiento, name: "% Crecimiento"}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      table_pickup.crecimiento: "#EA4335"
      table_pickup.count_codreservaF2: "#12B5CB"
      table_pickup.count_codreservaF1: "#1A73E8"
    series_point_styles: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hide_totals: false
    hide_row_totals: false
    listen:
      Dimensión: table_pickup.main_dim_selector
      Fecha Inicio: table_pickup.fecha_inicio
      Fecha Final: table_pickup.fecha_final
    row: 2
    col: 5
    width: 4
    height: 2
  - title: Reservaciones Fecha Inicio
    name: Reservaciones Fecha Inicio
    model: Excellent_Produccion
    explore: table_pickup
    type: single_value
    fields: [table_pickup.count_codreservaF1]
    filters: {}
    sorts: [table_pickup.count_codreservaF1 desc]
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    custom_color: "#12B5CB"
    single_value_title: Reservaciones Fecha Inicio
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_cell_visualizations:
      table_pickup.crecimiento:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF2:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF1:
        is_active: true
        palette:
          palette_id: c65a64ce-7f46-476b-a320-41345941e5b1
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    series_text_format:
      table_pickup.tipohabitacionuso_id:
        bold: true
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: table_pickup.count_codreservaF1,
            id: table_pickup.count_codreservaF1, name: Reservas F1}, {axisId: table_pickup.count_codreservaF2,
            id: table_pickup.count_codreservaF2, name: Reservas F2}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: table_pickup.crecimiento,
            id: table_pickup.crecimiento, name: "% Crecimiento"}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      table_pickup.crecimiento: "#EA4335"
      table_pickup.count_codreservaF2: "#12B5CB"
      table_pickup.count_codreservaF1: "#1A73E8"
    series_point_styles: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hide_totals: false
    hide_row_totals: false
    listen:
      Dimensión: table_pickup.main_dim_selector
      Fecha Inicio: table_pickup.fecha_inicio
      Fecha Final: table_pickup.fecha_final
    row: 2
    col: 0
    width: 4
    height: 2
  - title: "% Crecimiento"
    name: "% Crecimiento"
    model: Excellent_Produccion
    explore: table_pickup
    type: single_value
    fields: [table_pickup.crecimiento]
    filters: {}
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    custom_color: "#079c98"
    single_value_title: "% Crecimiento"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_cell_visualizations:
      table_pickup.crecimiento:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF2:
        is_active: true
        palette:
          palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      table_pickup.count_codreservaF1:
        is_active: true
        palette:
          palette_id: c65a64ce-7f46-476b-a320-41345941e5b1
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    series_text_format:
      table_pickup.tipohabitacionuso_id:
        bold: true
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: table_pickup.count_codreservaF1,
            id: table_pickup.count_codreservaF1, name: Reservas F1}, {axisId: table_pickup.count_codreservaF2,
            id: table_pickup.count_codreservaF2, name: Reservas F2}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: table_pickup.crecimiento,
            id: table_pickup.crecimiento, name: "% Crecimiento"}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      table_pickup.crecimiento: "#EA4335"
      table_pickup.count_codreservaF2: "#12B5CB"
      table_pickup.count_codreservaF1: "#1A73E8"
    series_point_styles: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hide_totals: false
    hide_row_totals: false
    listen:
      Dimensión: table_pickup.main_dim_selector
      Fecha Inicio: table_pickup.fecha_inicio
      Fecha Final: table_pickup.fecha_final
    row: 2
    col: 10
    width: 4
    height: 2
  - title: ''
    name: " (2)"
    model: Excellent_Produccion
    explore: table_pickup
    type: looker_grid
    fields: [table_pickup.count_codreservaF1, table_pickup.count_codreservaF2, table_pickup.crecimiento,
      table_pickup.aniomesentrada, table_pickup.dynamic_dim]
    pivots: [table_pickup.aniomesentrada]
    filters:
      table_pickup.fecha_final: 2019/10/08
    sorts: [table_pickup.aniomesentrada, table_pickup.count_codreservaF1 desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      table_pickup.aniomesentrada: Año-Mes Ocupación
      table_pickup.count_codreservaF1: Reservas Fecha Inicio
      table_pickup.count_codreservaF2: Reservas Fecha Final
    series_column_widths:
      table_pickup.dynamic_dim: 179
    series_cell_visualizations:
      table_pickup.count_codreservaF1:
        is_active: false
      table_pickup.crecimiento:
        is_active: false
    series_text_format:
      table_pickup.crecimiento: {}
      table_pickup.aniomesentrada:
        bold: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#000000"
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: c65a64ce-7f46-476b-a320-41345941e5b1, options: {steps: 20, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: false, reverse: true, stepped: true}}, bold: false, italic: false,
        strikethrough: false, fields: [table_pickup.count_codreservaF1, table_pickup.count_codreservaF2]},
      {type: along a scale..., value: !!null '', background_color: "#1A73E8", font_color: !!null '',
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: c65a64ce-7f46-476b-a320-41345941e5b1,
          options: {steps: 20, reverse: true, stepped: true}}, bold: false, italic: false,
        strikethrough: false, fields: [table_pickup.crecimiento]}]
    defaults_version: 1
    pinned_columns:
      table_pickup.dynamic_dim: left
    column_order: []
    listen:
      Dimensión: table_pickup.main_dim_selector
      Fecha Inicio: table_pickup.fecha_inicio
    row: 24
    col: 0
    width: 24
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: '<div style="text-align: left; font-size: 14pt;">KPI - consolidado
      general </div>'
    body_text: '<div style="text-align: left; font-size: 9pt;"> Conteo de reservaciones
      hasta la fecha inicio o final. Además del crecimiento entre esas dos medidas  </div>'
    row: 0
    col: 0
    width: 14
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: '<div style="text-align: left; font-size: 14pt;"> Análisis por
      Tipo de Habitacion </div>'
    body_text: '<div style="text-align: left; font-size: 9pt;"> Conteo de reservaciones
      hasta la fecha inicio y fecha final, tabulado <strong>por tipo de habitación</strong>.
      Además del crecimiento entre esas dos medidas </div>'
    row: 0
    col: 14
    width: 10
    height: 4
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: '<div style="text-align: left; font-size: 14pt;"> Análisis por
      Canal </div>'
    body_text: '<div style="text-align: left; font-size: 9pt;"> Conteo de reservaciones
      hasta la fecha inicio  y fecha final, graficado <strong>por canal</strong>.
      Además del crecimiento entre esas dos medidas, dibujado en rojo  </div>'
    row: 4
    col: 0
    width: 14
    height: 2
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: '<div style="text-align: left; font-size: 14pt;"> Pickup - Drill
      Down </div>'
    body_text: "<div style=\"text-align: left; font-size: 9pt;\"> \n\nConteo de reservaciones\
      \ hasta la fecha inicio y hasta la fecha final, distribuidas por <strong>Mes\
      \ de Ocupación</strong> y por <strong>Hotel</strong>. Se calcula el <strong>Crecimiento</strong>\
      \ entre los dos anteriores conteos.\n<br>\nSe puede hacer <strong>Drill Down</strong>\
      \  (click derecho) sobre la dimensión <strong>Hotel</strong>, para verlo por\
      \ <strong>Canal</strong> o <strong>Tipo de Habitación</strong>.\n\n</div>"
    row: 14
    col: 0
    width: 24
    height: 2
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: '<div style="text-align: left; font-size: 14pt;"> Pickup - Dynamic
      Dim </div>'
    body_text: "<div style=\"text-align: left; font-size: 9pt;\"> \n\nConteo de reservaciones\
      \ hasta la fecha inicio y hasta la fecha final, distribuidas por <strong>Mes\
      \ de Ocupación</strong> y por <strong>Hotel</strong>. Se calcula el <strong>Crecimiento</strong>\
      \ entre los dos anteriores conteos.\n<br>\nSe puede cambiar la dimensión a evaluar\
      \ desde el <strong>filtro Dimensión</strong> en la parte superior del tablero,\
      \ para verlo por <strong>Hotel</strong>, por <strong>Canal</strong> o por <strong>Tipo\
      \ de Habitación</strong>.\n\n</div>"
    row: 22
    col: 0
    width: 24
    height: 2
  filters:
  - name: Fecha Inicio
    title: Fecha Inicio
    type: field_filter
    default_value: 2020/03/03
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Excellent_Produccion
    explore: table_pickup
    listens_to_filters: []
    field: table_pickup.fecha_inicio
  - name: Fecha Final
    title: Fecha Final
    type: field_filter
    default_value: 2020/03/07
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Excellent_Produccion
    explore: table_pickup
    listens_to_filters: []
    field: table_pickup.fecha_final
  - name: Dimensión
    title: Dimensión
    type: field_filter
    default_value: hotel^_id
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: Excellent_Produccion
    explore: table_pickup
    listens_to_filters: []
    field: table_pickup.main_dim_selector
