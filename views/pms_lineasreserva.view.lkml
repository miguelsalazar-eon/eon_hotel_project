view: pms_lineasreserva {
  sql_table_name: `raw_excellence.pms_lineasreserva`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: codreserva_id {
    type: string
    sql: ${TABLE}.codreserva_id ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: hotel_id {
    type: string
    sql: ${TABLE}.hotel_id ;;
  }

  dimension: numpersonas {
    type: number
    sql: ${TABLE}.numpersonas ;;
  }

  dimension: ocupacion {
    type: number
    sql: ${TABLE}.ocupacion ;;
  }

  dimension: tipohabitacionuso_id {
    type: number
    sql: ${TABLE}.tipohabitacionuso_id ;;
  }

  dimension: tipopersona {
    type: number
    sql: ${TABLE}.tipopersona ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
