view: pickup_analisis {
  # sql_table_name: `raw_excellence.pms_produccion`
  suggestions: no
  derived_table: {
    sql: select COALESCE(F1.hotel_id, F2.hotel_id) hotel_id
      ,F1.codreserva codreservaF1
      ,F2.codreserva codreservaF2
      ,COALESCE(F1.AnioMes, F2.AnioMes) AnioMes
      ,COALESCE(F1.canal, F2.canal) canal
      ,COALESCE(F1.tipohabitacionuso_id, F2.tipohabitacionuso_id) tipohabitacionuso_id
      ,COALESCE(F1.fechaventa, F2.fechaventa) fechaventa
FROM
(
select
    reserv.RESORT hotel_id,
    reserv.CONFIRMATION_NO codreserva,
    concat(EXTRACT(year from TIMESTAMP_MICROS(reserv.BEGIN_DATE)),'-',EXTRACT(month from TIMESTAMP_MICROS(reserv.BEGIN_DATE))) AnioMes,
    reserv.BEGIN_DATE fechaentrada,
    reserv.MARKET_GROUP canal,
    reserv.ROOM_CLASS tipohabitacionuso_id,
    DATE(TIMESTAMP_MICROS(reserv.RESERVATION_DATE)) fechaventa
from  EON_raw.MX_VW_Data_VW_PROD_HISTORY reserv
WHERE reserv.RESV_STATUS IN ('DEFINITIVE','CHECKED IN')
AND DATE( TIMESTAMP_MICROS(reserv.RESERVATION_DATE)) <=  DATE({% date_start fecha_inicio %})
and DATE( TIMESTAMP_MICROS(reserv.BEGIN_DATE)) BETWEEN  DATE_ADD(DATE_ADD(LAST_DAY(DATE ({% date_start fecha_inicio %})), INTERVAL  1 DAY),INTERVAL -1 MONTH)
    AND LAST_DAY(DATE_ADD(DATE ({% date_start fecha_inicio %}), INTERVAL 6 MONTH))
  and reserv.BEGIN_DATE is not NULL
) F1
RIGHT OUTER JOIN
(
select
    reserv.RESORT hotel_id,
    reserv.CONFIRMATION_NO codreserva,
    concat(EXTRACT(year from TIMESTAMP_MICROS(reserv.BEGIN_DATE)),'-',EXTRACT(month from TIMESTAMP_MICROS(reserv.BEGIN_DATE))) AnioMes,
    reserv.BEGIN_DATE fechaentrada,
    reserv.MARKET_GROUP canal,
    reserv.ROOM_CLASS tipohabitacionuso_id,
    DATE(TIMESTAMP_MICROS(reserv.RESERVATION_DATE)) fechaventa
from EON_raw.MX_VW_Data_VW_PROD_HISTORY reserv
where  reserv.RESV_STATUS IN ('DEFINITIVE','CHECKED IN')
AND DATE( TIMESTAMP_MICROS(reserv.RESERVATION_DATE)) <=  DATE({% date_end fecha_final %})
and DATE( TIMESTAMP_MICROS(reserv.BEGIN_DATE)) BETWEEN  DATE_ADD(DATE_ADD(LAST_DAY(DATE ({% date_start fecha_inicio %})), INTERVAL  1 DAY),INTERVAL -1 MONTH)
 AND LAST_DAY(DATE_ADD(DATE ({% date_start fecha_inicio %}), INTERVAL 6 MONTH))
 and reserv.BEGIN_DATE is not NULL
 ) F2
ON F1.codreserva = F2.codreserva ;;

    # sql: select COALESCE(F1.hotel_id, F2.hotel_id) hotel_id
    #         ,F1.codreserva codreservaF1
    #         ,F2.codreserva codreservaF2
    #         ,COALESCE(F1.AnioMes, F2.AnioMes) AnioMes
    #         ,COALESCE(F1.canal, F2.canal) canal
    #         ,COALESCE(F1.tipohabitacionuso_id, F2.tipohabitacionuso_id) tipohabitacionuso_id
    #         ,COALESCE(F1.fechaventa, F2.fechaventa) fechaventa

    #   FROM
    #   (
    #   select
    #       reserv.hotel_id,
    #       reserv.codreserva,
    #       FORMAT_DATE("%Y-%m", reserv.fechaentrada) AnioMes,
    #       reserv.fechaentrada,
    #       reserv.canal,
    #       reserv.tipohabitacionuso_id,
    #       reserv.fechaventa
    #   from  raw_excellence.pms_reserva reserv
    #   WHERE reserv.estado IN (0,2,3)
    #   AND DATE(reserv.fechaventa) <=  DATE({% date_start fecha_inicio %})
    #   and reserv.fechaentrada BETWEEN  DATE_ADD(DATE_ADD(LAST_DAY(DATE ({% date_start fecha_inicio %})), INTERVAL  1 DAY),INTERVAL -1 MONTH)
    #       AND LAST_DAY(DATE_ADD(DATE ({% date_start fecha_inicio %}), INTERVAL 6 MONTH))
    #   ) F1
    #   RIGHT OUTER JOIN
    #   (
    #   select
    #       reserv.hotel_id,
    #       reserv.codreserva,
    #       FORMAT_DATE("%Y-%m", reserv.fechaentrada) AnioMes,
    #       reserv.fechaentrada,
    #       reserv.canal,
    #       reserv.tipohabitacionuso_id,
    #       reserv.fechaventa
    #   from raw_excellence.pms_reserva reserv
    #   where  reserv.estado IN (0,2,3)
    #   AND DATE(reserv.fechaventa) <=  DATE({% date_end fecha_final %})
    #   and reserv.fechaentrada BETWEEN  DATE_ADD(DATE_ADD(LAST_DAY(DATE ({% date_start fecha_inicio %})), INTERVAL  1 DAY),INTERVAL -1 MONTH)
    #       AND LAST_DAY(DATE_ADD(DATE ({% date_start fecha_inicio %}), INTERVAL 6 MONTH))
    #   ) F2
    #   ON F1.codreserva = F2.codreserva
            # ;;
  }

  filter: fecha_inicio{
    type: date
  }

  filter: fecha_final {
    type: date
  }

  dimension: hotel_id {
    label: "Hotel"
    type: string
    sql: ${TABLE}.hotel_id ;;
    drill_fields: [drill_group*]
  }

  dimension: hotel_descripcion {
    label: "Hotel"
    type: string
    sql: case when  ${hotel_id}='3401' then 'EMPORIO'
              when  ${hotel_id}='34022' then 'SAM VALLARTA'
              when  ${hotel_id}='3407' then 'EMPORIUM'
              when  ${hotel_id}='3406' then 'BACOLI'
              when  ${hotel_id}='34021' then 'KAAJAL'
              when  ${hotel_id}='3403' then 'LA CEVICHERA'
              when  ${hotel_id}='3409' then 'ORIENTAL' END;;
    drill_fields: [drill_group*]
  }

  dimension: codreservaF1 {
    label: "Codigo Reserva F1"
    type: string
    sql: ${TABLE}.codreservaF1 ;;
  }

  dimension: codreservaF2 {
    label: "Codigo Reserva F2"
    type: string
    sql: ${TABLE}.codreservaF2 ;;
  }

  dimension: aniomesentrada {
    label: "Año Mes Ocupacion"
    type: date
    sql: DATE(CONCAT(${TABLE}.AnioMes,'-01')) ;;
    html: {{ rendered_value | date: "%B" }};;
  }

  dimension: canal {
    label: "Canal"
    type: string
    sql: ${TABLE}.canal ;;
    required_access_grants: [can_see_mail]
  }

  dimension: canal_descripcion {
    label: "Canal"
    type: string
    sql:case when ${canal}='TRN' then 'FACEBOOK'
             when ${canal}='WED' then 'INSTAGRAM'
             when ${canal}='GRP' then 'ISLAS'
             when ${canal}='COMP' then 'CALL CENTER'
             when ${canal}='IND' then 'WHATSAPP'
             when ${canal}='CMP' then 'SITIO'
             when ${canal}='POS' then 'AGENCIAS' end;;
    required_access_grants: [can_see_mail]
  }

  dimension: tipohabitacionuso_id {
    label: "Tipo Habitacion"
    type: string
    sql: ${TABLE}.tipohabitacionuso_id ;;
  }


  dimension: tipohabitacion_descripcion {
    label: "Tipo Habitacion Detalle"
    type: string
    sql: case when  ${TABLE}.tipohabitacionuso_id ='PLT' then 'PLATINO'
              when  ${TABLE}.tipohabitacionuso_id ='STD' then 'ESTANDAR'
              when  ${TABLE}.tipohabitacionuso_id ='DIA' then 'CLUB JUNIOR'
              when  ${TABLE}.tipohabitacionuso_id ='SUI' then 'JUNIOR SUITE'
              when  ${TABLE}.tipohabitacionuso_id ='DIAH' then 'CLUB HONEYMOON'
              when  ${TABLE}.tipohabitacionuso_id ='STDH' then 'SUITE CON TERRAZA'
              when  ${TABLE}.tipohabitacionuso_id ='SUIH' then 'SUITE CON VISTA MAR'
              when  ${TABLE}.tipohabitacionuso_id ='BAS' then 'CLUB IMPERIAL'
              when  ${TABLE}.tipohabitacionuso_id ='PMAS' then 'JUNIOR SUITE CON VISTA AL MAR'
              when  ${TABLE}.tipohabitacionuso_id ='SUP' then 'SUITE DE DOS PLANTAS' end
;;
  }

  dimension: fechaventa {
    label: "Fecha de Venta"
    type: date
    sql: ${TABLE}.fechaventa ;;
  }

  dimension_group: fechaventa {
    type: time
    timeframes: [date, week, month,month_name]
    sql: ${TABLE}.fechaventa ;;
  }

  measure: count_codreservaF1 {
    label: "Reservas Fecha Inicio"
    type: number
    sql: COUNT(${TABLE}.codreservaF1) ;;
  }

  measure: count_codreservaF2 {
    label: "Reservas Fecha Final"
    type: number
    sql: COUNT(${TABLE}.codreservaF2) ;;
  }

  measure: crecimiento {
    label: "% Crecimiento"
    type: number
    value_format: "0.00\%"
    sql: (1-(${count_codreservaF1}/${count_codreservaF2}))*100 ;;
  }

  set: drill_group {
    fields: [
      canal,
      tipohabitacionuso_id
    ]
  }
  parameter: main_dim_selector {
    type: unquoted
    allowed_value: {
      label: "Hotel"
      value: "hotel_id"
    }
    allowed_value: {
      label: "Canal"
      value: "canal"
    }
    allowed_value: {
      label: "Tipo Habitacion"
      value: "tipohabitacionuso_id"
    }
  }

  dimension: dynamic_dim {
    label_from_parameter: main_dim_selector
    sql:
        {% if main_dim_selector._parameter_value == 'hotel_id' %}
          ${hotel_id}
        {% elsif  main_dim_selector._parameter_value == 'canal' %}
          ${canal}
        {% else %}
          ${tipohabitacionuso_id}
        {% endif %};;
  }

  dimension: dynamic_dim2 {
    label_from_parameter: main_dim_selector
    sql:
        {% if main_dim_selector._parameter_value == 'hotel_id' %}
          ${hotel_descripcion}
        {% elsif  main_dim_selector._parameter_value == 'canal' %}
          ${canal_descripcion}
        {% else %}
          ${tipohabitacion_descripcion}
        {% endif %};;
  }


}
