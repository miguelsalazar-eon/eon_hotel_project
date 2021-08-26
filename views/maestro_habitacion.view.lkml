view: maestro_habitacion {
  sql_table_name: `raw_excellence.maestro_habitacion`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bloque_id {
    type: number
    sql: ${TABLE}.bloque_id ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: estadoal_id {
    type: string
    sql: ${TABLE}.estadoal_id ;;
  }

  dimension: habitacion {
    type: string
    sql: ${TABLE}.habitacion ;;
  }

  dimension: hotel_id {
    type: string
    sql: ${TABLE}.hotel_id ;;
  }

  dimension: planta_id {
    type: number
    sql: ${TABLE}.planta_id ;;
  }

  dimension: posx1 {
    type: number
    sql: ${TABLE}.posx1 ;;
  }

  dimension: posx2 {
    type: number
    sql: ${TABLE}.posx2 ;;
  }

  dimension: posy1 {
    type: number
    sql: ${TABLE}.posy1 ;;
  }

  dimension: posy2 {
    type: number
    sql: ${TABLE}.posy2 ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: tipocama_id {
    type: number
    sql: ${TABLE}.tipocama_id ;;
  }

  dimension: tipohabitacion_id {
    type: number
    sql: ${TABLE}.tipohabitacion_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
