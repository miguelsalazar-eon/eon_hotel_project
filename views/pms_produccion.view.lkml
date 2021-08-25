view: pms_produccion {
  sql_table_name: `raw_excellence.pms_produccion`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alojamiento {
    type: yesno
    sql: ${TABLE}.alojamiento ;;
  }

  dimension: automatica {
    type: yesno
    sql: ${TABLE}.automatica ;;
  }

  dimension: cambio {
    type: number
    sql: ${TABLE}.cambio ;;
  }

  dimension: cambiocentral {
    type: number
    sql: ${TABLE}.cambiocentral ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: centro_id {
    type: string
    sql: ${TABLE}.centro_id ;;
  }

  dimension: codreserva_id {
    type: string
    sql: ${TABLE}.codreserva_id ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: destino {
    type: number
    sql: ${TABLE}.destino ;;
    required_access_grants: [can_see_mail]
  }

  dimension: divisa_id {
    type: string
    sql: ${TABLE}.divisa_id ;;
  }

  dimension: divisacentral_id {
    type: string
    sql: ${TABLE}.divisacentral_id ;;
  }

  dimension: factura {
    type: string
    sql: ${TABLE}.factura ;;
  }

  dimension_group: fechacargo {
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
    sql: ${TABLE}.fechacargo ;;
  }

  dimension_group: fechaproceso {
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
    sql: ${TABLE}.fechaproceso ;;
  }

  dimension: formatolinea {
    type: number
    sql: ${TABLE}.formatolinea ;;
  }

  dimension: garantia {
    type: number
    sql: ${TABLE}.garantia ;;
  }

  dimension: grupocontnegocio {
    type: string
    sql: ${TABLE}.grupocontnegocio ;;
  }

  dimension: grupocontprod {
    type: string
    sql: ${TABLE}.grupocontprod ;;
  }

  dimension: hotel_id {
    type: string
    sql: ${TABLE}.hotel_id ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: importeoriginal {
    type: number
    sql: ${TABLE}.importeoriginal ;;
  }

  dimension: importeproduccion {
    type: number
    sql: ${TABLE}.importeproduccion ;;
  }

  dimension: importesindesc {
    type: number
    sql: ${TABLE}.importesindesc ;;
  }

  dimension: impuestosincluidos {
    type: yesno
    sql: ${TABLE}.impuestosincluidos ;;
  }

  dimension: nombrecliente {
    type: string
    sql: ${TABLE}.nombrecliente ;;
  }

  dimension: porcentaje {
    type: number
    sql: ${TABLE}.porcentaje ;;
  }

  dimension: porcentajeimpuesto {
    type: number
    sql: ${TABLE}.porcentajeimpuesto ;;
  }

  dimension: secuencia {
    type: number
    sql: ${TABLE}.secuencia ;;
  }

  dimension: tarifa {
    type: string
    sql: ${TABLE}.tarifa ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.ticket ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tipo {
    type: number
    sql: ${TABLE}.tipo ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: totalcentral {
    type: number
    sql: ${TABLE}.totalcentral ;;
  }

  dimension: totalcm {
    type: number
    sql: ${TABLE}.totalcm ;;
  }

  dimension: totalfac {
    type: number
    sql: ${TABLE}.totalfac ;;
  }

  dimension: totalimporteproduccion {
    type: number
    sql: ${TABLE}.totalimporteproduccion ;;
  }

  dimension: totaloriginal {
    type: number
    sql: ${TABLE}.totaloriginal ;;
  }

  dimension: totalprod {
    type: number
    sql: ${TABLE}.totalprod ;;
  }

  dimension: tpv {
    type: string
    sql: ${TABLE}.tpv ;;
  }

  dimension_group: ultimamodif {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ultimamodif ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
