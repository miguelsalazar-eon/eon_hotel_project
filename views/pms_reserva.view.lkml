view: pms_reserva {
  sql_table_name: `raw_excellence.pms_reserva`
    ;;

  dimension: ad {
    type: number
    sql: ${TABLE}.ad ;;
  }

  dimension: aerolinea {
    type: string
    sql: ${TABLE}.aerolinea ;;
  }

  dimension: aerolineallegada_id {
    type: number
    sql: ${TABLE}.aerolineallegada_id ;;
  }

  dimension: aerolineasalida_id {
    type: number
    sql: ${TABLE}.aerolineasalida_id ;;
  }

  dimension: aeropuertodestino {
    type: string
    sql: ${TABLE}.aeropuertodestino ;;
  }

  dimension: aeropuertoorigen {
    type: string
    sql: ${TABLE}.aeropuertoorigen ;;
  }

  dimension: agencia_id {
    type: string
    sql: ${TABLE}.agencia_id ;;
  }

  dimension: agrupacion {
    type: string
    sql: ${TABLE}.agrupacion ;;
  }

  dimension: bono {
    type: string
    sql: ${TABLE}.bono ;;
  }

  dimension: bookingwindow {
    type: number
    sql: ${TABLE}.bookingwindow ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: canalmr {
    type: string
    sql: ${TABLE}.canalmr ;;
  }

  dimension: cantidadhabitaciones {
    type: number
    sql: ${TABLE}.cantidadhabitaciones ;;
  }

  dimension: cliente_id {
    type: string
    sql: ${TABLE}.cliente_id ;;
  }

  dimension: codreserva {
    type: string
    sql: ${TABLE}.codreserva ;;
  }

  dimension: comentariohotel {
    type: string
    sql: ${TABLE}.comentariohotel ;;
  }

  dimension: comentariohuesped {
    type: string
    sql: ${TABLE}.comentariohuesped ;;
  }

  dimension: contactada {
    type: yesno
    sql: ${TABLE}.contactada ;;
  }

  dimension: contratotarifahotel {
    type: string
    sql: ${TABLE}.contratotarifahotel ;;
  }

  dimension: credito {
    type: number
    sql: ${TABLE}.credito ;;
  }

  dimension: cu {
    type: number
    sql: ${TABLE}.cu ;;
  }

  dimension: desglose {
    type: number
    sql: ${TABLE}.desglose ;;
  }

  dimension_group: diallegada {
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
    sql: ${TABLE}.diallegada ;;
  }

  dimension_group: diasalida {
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
    sql: ${TABLE}.diasalida ;;
  }

  dimension: encuesta {
    type: yesno
    sql: ${TABLE}.encuesta ;;
  }

  dimension: enhotel {
    type: yesno
    sql: ${TABLE}.enhotel ;;
  }

  dimension: entradaym {
    type: string
    sql: ${TABLE}.entradaym ;;
  }

  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
  }

  dimension: estadofactura {
    type: number
    sql: ${TABLE}.estadofactura ;;
  }

  dimension: facturaestancia {
    type: string
    sql: ${TABLE}.facturaestancia ;;
  }

  dimension_group: fechacancelacion {
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
    sql: ${TABLE}.fechacancelacion ;;
  }

  dimension_group: fechacontacto {
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
    sql: ${TABLE}.fechacontacto ;;
  }

  dimension_group: fechaentrada {
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
    sql: ${TABLE}.fechaentrada ;;
  }

  dimension_group: fechasalida {
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
    sql: ${TABLE}.fechasalida ;;
  }

  dimension_group: fechaventa {
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
    sql: ${TABLE}.fechaventa ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: habitacion {
    type: string
    sql: ${TABLE}.habitacion ;;
  }

  dimension: habnum_id {
    type: number
    sql: ${TABLE}.habnum_id ;;
  }

  dimension: hotel_id {
    type: string
    sql: ${TABLE}.hotel_id ;;
  }

  dimension: jr {
    type: number
    sql: ${TABLE}.jr ;;
  }

  dimension: motor {
    type: yesno
    sql: ${TABLE}.motor ;;
  }

  dimension: ni {
    type: number
    sql: ${TABLE}.ni ;;
  }

  dimension: noches {
    type: number
    sql: ${TABLE}.noches ;;
  }

  dimension: nota {
    type: string
    sql: ${TABLE}.nota ;;
  }

  dimension: numcontrato {
    type: string
    sql: ${TABLE}.numcontrato ;;
  }

  dimension: numhabitaciones {
    type: number
    sql: ${TABLE}.numhabitaciones ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }

  dimension: origenmr {
    type: string
    sql: ${TABLE}.origenmr ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }

  dimension: promocion {
    type: string
    sql: ${TABLE}.promocion ;;
  }

  dimension: puntuacion {
    type: number
    sql: ${TABLE}.puntuacion ;;
  }

  dimension: rebook_id {
    type: string
    sql: ${TABLE}.rebook_id ;;
  }

  dimension: reffactura {
    type: string
    sql: ${TABLE}.reffactura ;;
  }

  dimension: regimen_id {
    type: string
    sql: ${TABLE}.regimen_id ;;
  }

  dimension: regimenuso_id {
    type: string
    sql: ${TABLE}.regimenuso_id ;;
  }

  dimension: reserva {
    type: string
    sql: ${TABLE}.reserva ;;
  }

  dimension: roomnigths {
    type: number
    sql: ${TABLE}.roomnigths ;;
  }

  dimension: roomrevenue {
    type: number
    sql: ${TABLE}.roomrevenue ;;
  }

  dimension: salidaimprevista {
    type: yesno
    sql: ${TABLE}.salidaimprevista ;;
  }

  dimension: salidaym {
    type: string
    sql: ${TABLE}.salidaym ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmentoope {
    type: string
    sql: ${TABLE}.segmentoope ;;
  }

  dimension: subtrato {
    type: string
    sql: ${TABLE}.subtrato ;;
  }

  dimension: tarifa {
    type: string
    sql: ${TABLE}.tarifa ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tipofacturacion {
    type: number
    sql: ${TABLE}.tipofacturacion ;;
  }

  dimension: tipohabitacionfactura_id {
    type: number
    sql: ${TABLE}.tipohabitacionfactura_id ;;
  }

  dimension: tipohabitacionuso_id {
    type: number
    sql: ${TABLE}.tipohabitacionuso_id ;;
  }

  dimension: tipohuesped {
    type: string
    sql: ${TABLE}.tipohuesped ;;
  }

  dimension: tipominibar_id {
    type: number
    sql: ${TABLE}.tipominibar_id ;;
  }

  dimension: trato {
    type: number
    sql: ${TABLE}.trato ;;
  }

  dimension: tripleta_id {
    type: number
    sql: ${TABLE}.tripleta_id ;;
  }

  dimension: ttoo_id {
    type: string
    sql: ${TABLE}.ttoo_id ;;
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

  dimension: usuariocontacto_id {
    type: number
    sql: ${TABLE}.usuariocontacto_id ;;
  }

  dimension: usuarioventa {
    type: string
    sql: ${TABLE}.usuarioventa ;;
  }

  dimension: validada {
    type: yesno
    sql: ${TABLE}.validada ;;
  }

  dimension: ventaym {
    type: string
    sql: ${TABLE}.ventaym ;;
  }

  dimension: vuelollegada {
    type: string
    sql: ${TABLE}.vuelollegada ;;
  }

  dimension: vuelosalida {
    type: string
    sql: ${TABLE}.vuelosalida ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: yeartarifa {
    type: number
    sql: ${TABLE}.yeartarifa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
