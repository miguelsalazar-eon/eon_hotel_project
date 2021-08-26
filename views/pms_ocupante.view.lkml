view: pms_ocupante {
  sql_table_name: `raw_excellence.pms_ocupante`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aceptaemail {
    type: yesno
    sql: ${TABLE}.aceptaemail ;;
  }

  dimension: alergianocomun {
    type: string
    sql: ${TABLE}.alergianocomun ;;
  }

  dimension: alergiasold {
    type: string
    sql: ${TABLE}.alergiasold ;;
  }

  dimension: anverso {
    type: string
    sql: ${TABLE}.anverso ;;
  }

  dimension: apellido1 {
    type: string
    sql: ${TABLE}.apellido1 ;;
  }

  dimension: apellido2 {
    type: string
    sql: ${TABLE}.apellido2 ;;
  }

  dimension: cardex_id {
    type: string
    sql: ${TABLE}.cardex_id ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
  }

  dimension: codigofidelizacion {
    type: string
    sql: ${TABLE}.codigofidelizacion ;;
  }

  dimension: codpostal {
    type: string
    sql: ${TABLE}.codpostal ;;
  }

  dimension: conyuge_id {
    type: number
    sql: ${TABLE}.conyuge_id ;;
  }

  dimension: dieta_id {
    type: number
    sql: ${TABLE}.dieta_id ;;
  }

  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }

  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }

  dimension: documentoexpedidoen {
    type: string
    sql: ${TABLE}.documentoexpedidoen ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: enviara_cardex {
    type: yesno
    sql: ${TABLE}.enviaraCardex ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: estadociv {
    type: string
    sql: ${TABLE}.estadociv ;;
  }

  dimension: extracreg {
    type: yesno
    sql: ${TABLE}.extracreg ;;
  }

  dimension: facebookid {
    type: string
    sql: ${TABLE}.facebookid ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: fecebook {
    type: string
    sql: ${TABLE}.fecebook ;;
  }

  dimension_group: fechaaniversario {
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
    sql: ${TABLE}.fechaaniversario ;;
  }

  dimension_group: fechaexpedicion {
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
    sql: ${TABLE}.fechaexpedicion ;;
  }

  dimension_group: fechanacimiento {
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
    sql: ${TABLE}.fechanacimiento ;;
  }

  dimension: firma {
    type: string
    sql: ${TABLE}.firma ;;
  }

  dimension: fuerahotel {
    type: yesno
    sql: ${TABLE}.fuerahotel ;;
  }

  dimension: idioma_id {
    type: number
    sql: ${TABLE}.idioma_id ;;
  }

  dimension: idiomaold {
    type: string
    sql: ${TABLE}.idiomaold ;;
  }

  dimension: imagen {
    type: string
    sql: ${TABLE}.imagen ;;
  }

  dimension: importado_cardex {
    type: yesno
    sql: ${TABLE}.importadoCardex ;;
  }

  dimension: instagram {
    type: string
    sql: ${TABLE}.instagram ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }

  dimension: nacionalidad_id {
    type: string
    sql: ${TABLE}.nacionalidad_id ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: paisresidencia_id {
    type: string
    sql: ${TABLE}.paisresidencia_id ;;
  }

  dimension: poblacion {
    type: string
    sql: ${TABLE}.poblacion ;;
  }

  dimension: posicion {
    type: number
    sql: ${TABLE}.posicion ;;
  }

  dimension: precheckin {
    type: yesno
    sql: ${TABLE}.precheckin ;;
  }

  dimension: registro {
    type: yesno
    sql: ${TABLE}.registro ;;
  }

  dimension: reserva_id {
    type: string
    sql: ${TABLE}.reserva_id ;;
  }

  dimension: revisadopor_id {
    type: number
    sql: ${TABLE}.revisadopor_id ;;
  }

  dimension: sexo {
    type: number
    sql: ${TABLE}.sexo ;;
  }

  dimension: subtipo {
    type: string
    sql: ${TABLE}.subtipo ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tipopersona {
    type: number
    sql: ${TABLE}.tipopersona ;;
  }

  dimension: trato {
    type: number
    sql: ${TABLE}.trato ;;
  }

  dimension: twiter {
    type: string
    sql: ${TABLE}.twiter ;;
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
