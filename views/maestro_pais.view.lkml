view: maestro_pais {
  sql_table_name: `raw_excellence.maestro_pais`
    ;;

  dimension: bandera {
    type: string
    sql: ${TABLE}.bandera ;;
  }

  dimension: calling_code {
    type: string
    sql: ${TABLE}.calling_code ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }

  dimension: edadprueba {
    type: number
    sql: ${TABLE}.edadprueba ;;
  }

  dimension: horasprueba {
    type: number
    sql: ${TABLE}.horasprueba ;;
  }

  dimension: iso {
    type: string
    sql: ${TABLE}.iso ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }

  dimension: pruebaretorno_id {
    type: number
    sql: ${TABLE}.pruebaretorno_id ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
