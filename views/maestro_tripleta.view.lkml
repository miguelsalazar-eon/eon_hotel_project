view: maestro_tripleta {
  sql_table_name: `raw_excellence.maestro_tripleta`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agencia_id {
    type: string
    sql: ${TABLE}.agencia_id ;;
  }

  dimension: cliente_id {
    type: string
    sql: ${TABLE}.cliente_id ;;
  }

  dimension: directo {
    type: yesno
    sql: ${TABLE}.directo ;;
  }

  dimension: ttoo_id {
    type: string
    sql: ${TABLE}.ttoo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
