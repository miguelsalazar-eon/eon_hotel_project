view: pms_cardex {
  sql_table_name: `raw_excellence.pms_cardex`
    ;;

  dimension: aceptaemail {
    type: yesno
    sql: ${TABLE}.aceptaemail ;;
  }

  dimension: agenciapreferencia {
    type: string
    sql: ${TABLE}.agenciapreferencia ;;
  }

  dimension: alergianocomun {
    type: string
    sql: ${TABLE}.alergianocomun ;;
  }

  dimension: alergiasold {
    type: string
    sql: ${TABLE}.alergiasold ;;
  }

  dimension: apellido1 {
    type: string
    sql: ${TABLE}.apellido1 ;;
  }

  dimension: apellido2 {
    type: string
    sql: ${TABLE}.apellido2 ;;
  }

  dimension: bio {
    type: string
    sql: ${TABLE}.bio ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
  }

  dimension: clientepreferencia {
    type: string
    sql: ${TABLE}.clientepreferencia ;;
  }

  dimension: codigofidelizacion {
    type: string
    sql: ${TABLE}.codigofidelizacion ;;
  }

  dimension: codpostal {
    type: string
    sql: ${TABLE}.codpostal ;;
  }

  dimension: compundcode {
    type: string
    sql: ${TABLE}.compundcode ;;
  }

  dimension: conyuge_id {
    type: number
    sql: ${TABLE}.conyuge_id ;;
  }

  dimension: crmid {
    type: string
    sql: ${TABLE}.crmid ;;
  }

  dimension: deviceid {
    type: string
    sql: ${TABLE}.deviceid ;;
  }

  dimension: diacompra {
    type: number
    sql: ${TABLE}.diacompra ;;
  }

  dimension: dieta_id {
    type: number
    sql: ${TABLE}.dieta_id ;;
  }

  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }

  dimension: dirgeo {
    type: string
    sql: ${TABLE}.dirgeo ;;
  }

  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: estadociv {
    type: string
    sql: ${TABLE}.estadociv ;;
  }

  dimension: estadonac {
    type: string
    sql: ${TABLE}.estadonac ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: facebookid {
    type: string
    sql: ${TABLE}.facebookid ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
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

  dimension_group: fechalistanegra {
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
    sql: ${TABLE}.fechalistanegra ;;
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

  dimension_group: fechaultimareserva {
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
    sql: ${TABLE}.fechaultimareserva ;;
  }

  dimension: firma {
    type: string
    sql: ${TABLE}.firma ;;
  }

  dimension: fotodocumento {
    type: string
    sql: ${TABLE}.fotodocumento ;;
  }

  dimension: globalcode {
    type: string
    sql: ${TABLE}.globalcode ;;
  }

  dimension: horacompra {
    type: number
    sql: ${TABLE}.horacompra ;;
  }

  dimension: hotelpreferencia_id {
    type: string
    sql: ${TABLE}.hotelpreferencia_id ;;
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

  dimension: instagram {
    type: string
    sql: ${TABLE}.instagram ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: listanegra {
    type: yesno
    sql: ${TABLE}.listanegra ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: mesaniversario {
    type: number
    sql: ${TABLE}.mesaniversario ;;
  }

  dimension: mescumple {
    type: number
    sql: ${TABLE}.mescumple ;;
  }

  dimension: mespreferenciacompra {
    type: number
    sql: ${TABLE}.mespreferenciacompra ;;
  }

  dimension: mespreferenciaestancia {
    type: number
    sql: ${TABLE}.mespreferenciaestancia ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }

  dimension: municipionac {
    type: string
    sql: ${TABLE}.municipionac ;;
  }

  dimension: nacionalidad_id {
    type: string
    sql: ${TABLE}.nacionalidad_id ;;
  }

  dimension: nacionalidadold {
    type: string
    sql: ${TABLE}.nacionalidadold ;;
  }

  dimension: nivelfidelizacion_id {
    type: number
    sql: ${TABLE}.nivelfidelizacion_id ;;
  }

  dimension: noalcohol {
    type: yesno
    sql: ${TABLE}.noalcohol ;;
  }

  dimension: noazucar {
    type: yesno
    sql: ${TABLE}.noazucar ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: numreservas {
    type: number
    sql: ${TABLE}.numreservas ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: paisnac {
    type: string
    sql: ${TABLE}.paisnac ;;
  }

  dimension: paisres_id {
    type: string
    sql: ${TABLE}.paisres_id ;;
  }

  dimension: poblacion {
    type: string
    sql: ${TABLE}.poblacion ;;
  }

  dimension: poblacionnac {
    type: string
    sql: ${TABLE}.poblacionnac ;;
  }

  dimension: sexo {
    type: number
    sql: ${TABLE}.sexo ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: trato {
    type: number
    sql: ${TABLE}.trato ;;
  }

  dimension: tratocrm {
    type: number
    sql: ${TABLE}.tratocrm ;;
  }

  dimension: ttoopreferencia {
    type: string
    sql: ${TABLE}.ttoopreferencia ;;
  }

  dimension: twiter {
    type: string
    sql: ${TABLE}.twiter ;;
  }

  dimension: ulthotel_id {
    type: string
    sql: ${TABLE}.ulthotel_id ;;
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

  dimension: ulttipohab_id {
    type: number
    sql: ${TABLE}.ulttipohab_id ;;
  }

  dimension: viajaconmenores {
    type: yesno
    sql: ${TABLE}.viajaconmenores ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
